@interface NTKCaliforniaContentView
+ (id)_disabledLayerActions;
- (CGPoint)circularPillMarkersCenterPoints;
- (CGPoint)hourMarkersCenterPointConstantsForStyle:(unint64_t)style dial:(unint64_t)dial;
- (NTKCaliforniaContentView)initWithFrame:(CGRect)frame dial:(unint64_t)dial style:(unint64_t)style colorPalette:(id)palette device:(id)device;
- (NTKCaliforniaStyleTransitionHandler)styleTransitionHandler;
- (id)_createChineseLabelAtIndex:(int)index dial:(unint64_t)dial forStyle:(unint64_t)style;
- (id)_createLayer;
- (id)_createLayersWithCount:(unint64_t)count;
- (id)_digitLayersForStyle:(unint64_t)style dial:(unint64_t)dial;
- (id)attributedStringForDigit:(unint64_t)digit style:(unint64_t)style font:(id)font;
- (id)createCaliforniaGraphicAtIndex:(unint64_t)index dial:(unint64_t)dial;
- (id)createLabelAtIndex:(int)index forStyle:(unint64_t)style dial:(unint64_t)dial;
- (id)createPillAtIndex:(unint64_t)index dial:(unint64_t)dial;
- (id)createPillViewWithAngle:(double)angle size:(const CGSize *)size;
- (id)hourTickColorForIndex:(unint64_t)index palette:(id)palette dial:(unint64_t)dial;
- (id)languageRenderingHintForCaliforniaStyle:(unint64_t)style;
- (id)minuteTickColorForIndex:(unint64_t)index palette:(id)palette dial:(unint64_t)dial;
- (id)pillLayerFromHourMarkerView:(id)view;
- (id)textForDigit:(unint64_t)digit style:(unint64_t)style;
- (id)tickColorForIndex:(unint64_t)index palette:(id)palette dial:(unint64_t)dial;
- (void)_applyStyle:(unint64_t)style;
- (void)_createDigitsIfNeededWithStyle:(unint64_t)style dial:(unint64_t)dial;
- (void)_createTemporaryDigitsIfNeededWithStyle:(unint64_t)style dial:(unint64_t)dial;
- (void)_layoutHourMarkersLayers:(id)layers style:(unint64_t)style dialShape:(unint64_t)shape;
- (void)addTicksIfNeeded;
- (void)applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette;
- (void)applyTransitionFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)applyTransitionFractionToTicksFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial;
- (void)configureTicksForStatus:(BOOL)status;
- (void)layoutSubviews;
- (void)removeHourMarkers;
- (void)removeTemporaryHourMarkers;
- (void)setBezelComplicationEnabled:(BOOL)enabled;
- (void)setCircularBezelTickAlpha:(double)alpha;
- (void)setColorInHourMarkerView:(id)view color:(id)color;
- (void)setColorPalette:(id)palette;
- (void)setDial:(unint64_t)dial;
- (void)setHourTicksColor:(id)color;
- (void)setMinuteTicksColor:(id)color;
- (void)setStyle:(unint64_t)style;
- (void)setTicksHiddenRange:(double)range;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NTKCaliforniaContentView

- (NTKCaliforniaContentView)initWithFrame:(CGRect)frame dial:(unint64_t)dial style:(unint64_t)style colorPalette:(id)palette device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  paletteCopy = palette;
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = NTKCaliforniaContentView;
  height = [(NTKCaliforniaContentView *)&v21 initWithFrame:x, y, width, height];
  v18 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v18->_circularBezelTickAlpha = 1.0;
    [(NTKCaliforniaContentView *)v18 setDial:dial];
    [(NTKCaliforniaContentView *)v18 setColorPalette:paletteCopy];
    [(NTKCaliforniaContentView *)v18 _applyStyle:style];
    v19 = +[UIColor clearColor];
    [(NTKCaliforniaContentView *)v18 setBackgroundColor:v19];
  }

  return v18;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKCaliforniaContentView;
  [(NTKCaliforniaContentView *)&v3 layoutSubviews];
  [(NTKCaliforniaContentView *)self bounds];
  [(CALayer *)self->_hourTicks setFrame:?];
  [(NTKCaliforniaContentView *)self bounds];
  [(CALayer *)self->_minuteTicks setFrame:?];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = NTKCaliforniaContentView;
  changeCopy = change;
  [(NTKCaliforniaContentView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(NTKCaliforniaContentView *)self traitCollection:v8.receiver];
  legibilityWeight = [v5 legibilityWeight];
  legibilityWeight2 = [changeCopy legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
    [(NTKCaliforniaContentView *)self _applyStyle:self->_style];
  }
}

- (void)_layoutHourMarkersLayers:(id)layers style:(unint64_t)style dialShape:(unint64_t)shape
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_400C;
  v5[3] = &unk_1C6A0;
  v5[4] = self;
  v5[5] = style;
  [layers enumerateObjectsUsingBlock:{v5, style, shape}];
}

- (CGPoint)hourMarkersCenterPointConstantsForStyle:(unint64_t)style dial:(unint64_t)dial
{
  v4 = __chkstk_darwin(self, a2, style, dial);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  device = [v4 device];
  sub_792C(device, __src);
  memcpy(&unk_22A10, __src, 0x18C8uLL);

  if (v6 == 1)
  {
    if (v8 < 0x13)
    {
      return *(&off_1C830 + v8);
    }

    return 0;
  }

  if (v8 <= 0x12)
  {
    if (((1 << v8) & 0x7FFB8) != 0)
    {
      return &unk_22A10;
    }

    if (v8 == 2)
    {
      return &unk_22DD0;
    }

    if (v8 == 6)
    {
      return &unk_23038;
    }
  }

  if (v8)
  {
    if (v8 == 1)
    {
      return &unk_22C50;
    }

    return 0;
  }

  return [v9 circularPillMarkersCenterPoints];
}

- (CGPoint)circularPillMarkersCenterPoints
{
  v2 = __chkstk_darwin(self, a2);
  device = [v2 device];
  sub_792C(device, v24);
  v21 = v25;

  [v2 bounds];
  CLKRectGetCenter();
  if ((v2[9] & 1) == 0)
  {
    v6 = 0;
    v19 = vdupq_lane_s64(v5, 0);
    v20 = vdupq_lane_s64(v4, 0);
    v17 = vdupq_n_s64(0x400921FB54442D18uLL);
    v18 = vdupq_n_s64(0x3FE0C152382D7365uLL);
    v7 = xmmword_179A0;
    v16 = vdupq_n_s64(2uLL);
    do
    {
      v23 = v7;
      v8 = vadd_s32(vmovn_s64(v7), 0x100000001);
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v22 = vmlaq_f64(v17, v18, vcvtq_f64_u64(v9));
      v10 = __sincos_stret(v22.f64[1]);
      v13 = __sincos_stret(v22.f64[0]);
      v12.f64[0] = v13.__cosval;
      v11.f64[0] = v13.__sinval;
      v11.f64[1] = v10.__sinval;
      v12.f64[1] = v10.__cosval;
      v26.val[0] = vsubq_f64(v20, vmulq_n_f64(v11, v21));
      v26.val[1] = vaddq_f64(v19, vmulq_n_f64(v12, v21));
      v14 = (&unk_242D8 + v6);
      vst2q_f64(v14, v26);
      v7 = vaddq_s64(v23, v16);
      v6 += 32;
    }

    while (v6 != 192);
    v2[9] = 1;
  }

  return &unk_242D8;
}

- (void)setColorPalette:(id)palette
{
  objc_storeStrong(&self->_colorPalette, palette);
  paletteCopy = palette;
  [(NTKCaliforniaContentView *)self addTicksIfNeeded];
  tickLayers = self->_tickLayers;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_4468;
  v9[3] = &unk_1C6C8;
  v9[4] = self;
  [(NSArray *)tickLayers enumerateObjectsUsingBlock:v9];
  hourMarkers = self->_hourMarkers;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4510;
  v8[3] = &unk_1C6F0;
  v8[4] = self;
  [(NSArray *)hourMarkers enumerateObjectsUsingBlock:v8];
}

- (void)setBezelComplicationEnabled:(BOOL)enabled
{
  if (self->_bezelComplicationEnabled != enabled)
  {
    self->_bezelComplicationEnabled = enabled;
    [(NTKCaliforniaContentView *)self layoutTicks];
  }
}

- (void)setStyle:(unint64_t)style
{
  if (self->_hourMarkersStyle != style || (-[NTKCaliforniaContentView styleTransitionHandler](self, "styleTransitionHandler"), v5 = objc_claimAutoreleasedReturnValue(), [v5 fraction], v7 = v6, v5, v7 != 0.0))
  {
    [(NTKCaliforniaContentView *)self _applyStyle:style];
    styleTransitionHandler = [(NTKCaliforniaContentView *)self styleTransitionHandler];
    [styleTransitionHandler setFraction:0.0];
  }
}

- (void)_applyStyle:(unint64_t)style
{
  [(NTKCaliforniaContentView *)self removeHourMarkers];
  [(NTKCaliforniaContentView *)self _createDigitsIfNeededWithStyle:style dial:self->_dial];
  [(NTKCaliforniaContentView *)self removeTemporaryHourMarkers];
  self->_style = style;
  styleTransitionHandler = self->_styleTransitionHandler;
  self->_styleTransitionHandler = 0;
}

- (void)setDial:(unint64_t)dial
{
  [(NTKCaliforniaContentView *)self _createDigitsIfNeededWithStyle:self->_style dial:dial];
  self->_dial = dial;
  [(NTKCaliforniaContentView *)self addTicksIfNeeded];
  if (self->_dial)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = 1;
    v6 = 0;
  }

  [(NTKCaliforniaContentView *)self applyTransitionFractionToTicksFraction:v5 fromDial:v6 toDial:1.0];
  [(NTKCaliforniaContentView *)self removeTemporaryHourMarkers];
  hourMarkers = self->_hourMarkers;
  style = self->_style;
  dial = self->_dial;

  [(NTKCaliforniaContentView *)self _layoutHourMarkersLayers:hourMarkers style:style dialShape:dial];
}

- (void)addTicksIfNeeded
{
  v2 = __chkstk_darwin(self, a2);
  sub_792C(*(v2 + 48), v18);
  v3 = *(v2 + 56);
  v4 = v3 == 0;
  if (!v3)
  {
    _createLayer = [v2 _createLayer];
    v6 = *(v2 + 56);
    *(v2 + 56) = _createLayer;

    layer = [v2 layer];
    [layer addSublayer:*(v2 + 56)];
  }

  if (!*(v2 + 64))
  {
    _createLayer2 = [v2 _createLayer];
    v9 = *(v2 + 64);
    *(v2 + 64) = _createLayer2;

    HIDWORD(v10) = HIDWORD(v19);
    *&v10 = v19;
    [*(v2 + 64) setOpacity:v10];
    [v2 bounds];
    [*(v2 + 64) setFrame:?];
    layer2 = [v2 layer];
    [layer2 addSublayer:*(v2 + 64)];

    v4 = 1;
  }

  if (*(v2 + 88))
  {
    v12 = (v2 + 96);
    if (*(v2 + 96))
    {
      if (!v4)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v13 = [v2 _createLayersWithCount:60];
    v14 = *(v2 + 88);
    *(v2 + 88) = v13;

    v12 = (v2 + 96);
    if (*(v2 + 96))
    {
      goto LABEL_13;
    }
  }

  v15 = [[NSMutableArray alloc] initWithCapacity:60];
  for (i = 0; i != 60; ++i)
  {
    [v15 setObject:&off_1ED78 atIndexedSubscript:i];
  }

  v17 = *v12;
  *v12 = v15;

LABEL_13:

  [v2 layoutTicks];
}

- (void)applyTransitionFractionToTicksFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial
{
  v5 = __chkstk_darwin(self, a2);
  CLKCompressFraction();
  v7 = v6;
  CLKCompressFraction();
  v9 = v8;
  memset(v24, 0, 512);
  sub_792C(*(v5 + 48), v24);
  [v5 bounds];
  v11 = v10 * 0.5;
  [v5 bounds];
  v13 = v12 * 0.5;
  v14 = 4792;
  if (*(v5 + 10))
  {
    v14 = 4800;
  }

  v15 = *&v24[v14];
  v16 = *(v5 + 88);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4B78;
  v17[3] = &unk_1C718;
  memcpy(v18, v24, sizeof(v18));
  v19 = v15;
  v20 = v7;
  v21 = v11;
  v22 = v13;
  v17[4] = v5;
  v23 = v9;
  [v16 enumerateObjectsUsingBlock:v17];
}

- (void)removeTemporaryHourMarkers
{
  [(NSArray *)self->_temporaryHourMarkers enumerateObjectsUsingBlock:&stru_1C758];
  temporaryHourMarkers = self->_temporaryHourMarkers;
  self->_temporaryHourMarkers = 0;
}

- (void)removeHourMarkers
{
  [(NSArray *)self->_hourMarkers enumerateObjectsUsingBlock:&stru_1C778];
  hourMarkers = self->_hourMarkers;
  self->_hourMarkers = 0;
}

- (void)_createDigitsIfNeededWithStyle:(unint64_t)style dial:(unint64_t)dial
{
  if (!self->_hourMarkers || self->_hourMarkersStyle != style || self->_hourMarkersDial != dial)
  {
    self->_hourMarkersStyle = style;
    self->_hourMarkersDial = dial;
    [(NTKCaliforniaContentView *)self removeHourMarkers];
    v7 = [(NTKCaliforniaContentView *)self _digitLayersForStyle:style dial:dial];
    hourMarkers = self->_hourMarkers;
    self->_hourMarkers = v7;

    v9 = self->_hourMarkers;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_502C;
    v10[3] = &unk_1C6F0;
    v10[4] = self;
    [(NSArray *)v9 enumerateObjectsUsingBlock:v10];
    [(NTKCaliforniaContentView *)self _layoutHourMarkersLayers:self->_hourMarkers style:style dialShape:dial];
  }
}

- (void)_createTemporaryDigitsIfNeededWithStyle:(unint64_t)style dial:(unint64_t)dial
{
  if (!self->_temporaryHourMarkers || self->_temporaryHourMarkersStyle != style || self->_temporaryHourMarkersDial != dial)
  {
    self->_temporaryHourMarkersStyle = style;
    self->_temporaryHourMarkersDial = dial;
    [(NSArray *)self->_temporaryHourMarkers enumerateObjectsUsingBlock:&stru_1C798];
    v7 = [(NTKCaliforniaContentView *)self _digitLayersForStyle:style dial:dial];
    temporaryHourMarkers = self->_temporaryHourMarkers;
    self->_temporaryHourMarkers = v7;

    v9 = self->_temporaryHourMarkers;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_51E8;
    v10[3] = &unk_1C6F0;
    v10[4] = self;
    [(NSArray *)v9 enumerateObjectsUsingBlock:v10];
    [(NTKCaliforniaContentView *)self _layoutHourMarkersLayers:self->_temporaryHourMarkers style:style dialShape:dial];
  }
}

- (void)setColorInHourMarkerView:(id)view color:(id)color
{
  viewCopy = view;
  colorCopy = color;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy setTextColor:colorCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [viewCopy setTintColor:colorCopy];
    }

    else
    {
      cGColor = [colorCopy CGColor];
      v8 = [(NTKCaliforniaContentView *)self pillLayerFromHourMarkerView:viewCopy];
      [v8 setBackgroundColor:cGColor];
    }
  }
}

- (id)pillLayerFromHourMarkerView:(id)view
{
  layer = [view layer];
  sublayers = [layer sublayers];
  firstObject = [sublayers firstObject];

  return firstObject;
}

- (id)createLabelAtIndex:(int)index forStyle:(unint64_t)style dial:(unint64_t)dial
{
  v5 = __chkstk_darwin(self, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v5;
  v13 = objc_alloc_init(UILabel);
  sub_792C(v12[6], v22);
  v14 = &v24;
  if (v7)
  {
    v14 = &v23;
  }

  v15 = *v14;
  device = [v12 device];
  v17 = NTKShowIndicScriptNumerals();

  if (!v17 || ([NTKSFCompactFont numericSoftFontOfSize:v15 weight:UIFontWeightSemibold], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = [CLKFont compactSoftFontOfSize:v15 weight:UIFontWeightSemibold];
  }

  [v13 setFont:v18];
  v19 = +[UIColor blackColor];
  [v13 setTextColor:v19];

  v20 = [v12 attributedStringForDigit:v11 style:v9 font:v18];
  [v13 setAttributedText:v20];

  return v13;
}

- (id)_createChineseLabelAtIndex:(int)index dial:(unint64_t)dial forStyle:(unint64_t)style
{
  v5 = __chkstk_darwin(self, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v5;
  sub_792C(*(v5 + 48), v23);
  v13 = 4520;
  if (v11 > 10)
  {
    v13 = 4536;
  }

  v14 = &v23[v13];
  v15 = 4512;
  if (v11 > 10)
  {
    v15 = 4528;
  }

  v16 = &v23[v15];
  if (v9)
  {
    v14 = v16;
  }

  v17 = *v14;
  v18 = +[NTKCaliforniaFontLoader sfNumeralsBoldFontDescriptor];
  v19 = [CLKFont fontWithDescriptor:v18 size:v17];

  v20 = objc_alloc_init(UILabel);
  [v20 setFont:v19];
  v21 = [v12 attributedStringForDigit:v11 style:v7 font:v19];
  [v20 setAttributedText:v21];

  return v20;
}

- (id)textForDigit:(unint64_t)digit style:(unint64_t)style
{
  if (!qword_24398)
  {
    qword_24398 = &off_1F6F8;
  }

  if (!qword_243A0)
  {
    qword_243A0 = &off_1F710;
  }

  if (!qword_243A8)
  {
    qword_243A8 = &off_1F728;
  }

  if (!qword_243B0)
  {
    qword_243B0 = &off_1F740;
  }

  if (!qword_243B8)
  {
    qword_243B8 = &off_1F758;
  }

  if (!qword_243C0)
  {
    qword_243C0 = &off_1F770;
  }

  if (!qword_243C8)
  {
    qword_243C8 = &off_1F788;
  }

  if (!qword_243D0)
  {
    qword_243D0 = &off_1F7A0;
  }

  if (!qword_243D8)
  {
    qword_243D8 = &off_1F7B8;
  }

  if (!qword_243E0)
  {
    qword_243E0 = &off_1F7D0;
  }

  if (!qword_243E8)
  {
    qword_243E8 = &off_1F7E8;
  }

  if (!qword_243F0)
  {
    qword_243F0 = &off_1F800;
  }

  if (!qword_243F8)
  {
    qword_243F8 = &off_1F818;
  }

  if (!qword_24400)
  {
    qword_24400 = &off_1F830;
  }

  if (!qword_24408)
  {
    qword_24408 = &off_1F848;
  }

  if (!qword_24410)
  {
    qword_24410 = &off_1F860;
  }

  switch(style)
  {
    case 1uLL:
      goto LABEL_37;
    case 2uLL:
      stringValue = 0;
      if (digit > 0xB)
      {
        goto LABEL_55;
      }

      if (((1 << digit) & 0x1B0) != 0)
      {
LABEL_38:
        v8 = [NSNumber numberWithUnsignedInteger:digit];
        stringValue = [v8 stringValue];
      }

      else if (((1 << digit) & 0xC06) != 0)
      {
LABEL_37:
        v7 = qword_243A8;
LABEL_54:
        stringValue = [v7 objectAtIndexedSubscript:digit - 1];
      }

LABEL_55:

      return stringValue;
    case 4uLL:
      v7 = qword_243A0;
      goto LABEL_54;
    case 5uLL:
      v7 = qword_24398;
      goto LABEL_54;
    case 6uLL:
      v7 = qword_243B0;
      goto LABEL_54;
    case 7uLL:
      v7 = qword_243B8;
      goto LABEL_54;
    case 8uLL:
      v7 = qword_243C0;
      goto LABEL_54;
    case 9uLL:
      v7 = qword_243C8;
      goto LABEL_54;
    case 0xAuLL:
      v7 = qword_243D0;
      goto LABEL_54;
    case 0xBuLL:
      v7 = qword_243D8;
      goto LABEL_54;
    case 0xCuLL:
      v7 = qword_243E0;
      goto LABEL_54;
    case 0xDuLL:
      v7 = qword_243E8;
      goto LABEL_54;
    case 0xEuLL:
      v7 = qword_243F0;
      goto LABEL_54;
    case 0xFuLL:
      v7 = qword_243F8;
      goto LABEL_54;
    case 0x10uLL:
      v7 = qword_24400;
      goto LABEL_54;
    case 0x11uLL:
      v7 = qword_24408;
      goto LABEL_54;
    case 0x12uLL:
      v7 = qword_24410;
      goto LABEL_54;
    default:
      goto LABEL_38;
  }
}

- (id)attributedStringForDigit:(unint64_t)digit style:(unint64_t)style font:(id)font
{
  fontCopy = font;
  v9 = [(NTKCaliforniaContentView *)self textForDigit:digit style:style];
  v10 = [(NTKCaliforniaContentView *)self languageRenderingHintForCaliforniaStyle:style];
  v11 = [NSAttributedString alloc];
  v15[0] = NSLanguageIdentifierAttributeName;
  v15[1] = NSFontAttributeName;
  v16[0] = v10;
  v16[1] = fontCopy;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = [v11 initWithString:v9 attributes:v12];

  return v13;
}

- (id)languageRenderingHintForCaliforniaStyle:(unint64_t)style
{
  if (style + 1 > 0x13)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_179D0[style + 1];
  }

  return _CLKLocaleRenderingHintLanguageIdentifierForNumberingSystem(v3, a2);
}

- (id)_digitLayersForStyle:(unint64_t)style dial:(unint64_t)dial
{
  v7 = +[NSMutableArray array];
  if (style == 6)
  {
    v8 = 15;
  }

  else
  {
    v8 = 13;
  }

  for (i = 1; i != v8; ++i)
  {
    if (!style)
    {
      v10 = [(NTKCaliforniaContentView *)self createPillAtIndex:i dial:dial];
      goto LABEL_11;
    }

    if (style == 2)
    {
      if (i <= 0xC && ((1 << i) & 0x1248) != 0)
      {
        v10 = [(NTKCaliforniaContentView *)self createCaliforniaGraphicAtIndex:i dial:dial];
LABEL_11:
        v11 = v10;
        goto LABEL_16;
      }

LABEL_14:
      v12 = [(NTKCaliforniaContentView *)self createLabelAtIndex:i forStyle:style dial:dial];
      goto LABEL_15;
    }

    if (style != 6)
    {
      goto LABEL_14;
    }

    v12 = [(NTKCaliforniaContentView *)self _createChineseLabelAtIndex:i dial:dial forStyle:6];
LABEL_15:
    v11 = v12;
    [v12 sizeToFit];
LABEL_16:
    [v7 addObject:v11];
  }

  return v7;
}

- (id)createCaliforniaGraphicAtIndex:(unint64_t)index dial:(unint64_t)dial
{
  v4 = __chkstk_darwin(self, a2);
  v6 = v5;
  v7 = v4;
  if (v8 == 12)
  {
    device = [v4 device];
    sub_792C(device, v21);

    if (v6 == 1)
    {
      v10 = (v7 + 10);
      if (!v7[10])
      {
        v11 = &v22;
        v12 = &v24;
        v13 = 6296;
        goto LABEL_11;
      }

LABEL_12:
      v15 = [[UIImageView alloc] initWithImage:*v10];
      goto LABEL_14;
    }

    if (!v6)
    {
      v10 = (v7 + 9);
      if (!v7[9])
      {
        v11 = &v23;
        v12 = &v25;
        v13 = 6312;
LABEL_11:
        v16 = [NTKCaliforniaTriangleFactory triangleWithSize:*&v21[v13] radius:*v11, *v12];
        v17 = [v16 imageWithRenderingMode:2];
        v18 = *v10;
        *v10 = v17;

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v15 = 0;
  }

  else
  {
    sub_792C(v4[6], v21);
    v14 = 4560;
    if (v6 == 1)
    {
      v14 = 4544;
    }

    v20 = *&v21[v14];
    v15 = [v7 createPillViewWithAngle:&v20 size:1.57079633];
  }

LABEL_14:

  return v15;
}

- (id)createPillAtIndex:(unint64_t)index dial:(unint64_t)dial
{
  v4 = __chkstk_darwin(self, a2);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  memset(v13, 0, 512);
  sub_792C(*(v4 + 48), v13);
  if (v6 == 1)
  {
    v12 = v13[v8 + 285];
    if (v8 == 12 && v9[8] == 1)
    {
      *(&v12 + 1) = v14;
    }
  }

  else
  {
    v12 = v13[298];
  }

  v10 = [v9 createPillViewWithAngle:&v12 size:v8 * 0.523598776];

  return v10;
}

- (id)createPillViewWithAngle:(double)angle size:(const CGSize *)size
{
  v6 = +[CALayer layer];
  _disabledLayerActions = [objc_opt_class() _disabledLayerActions];
  [v6 setActions:_disabledLayerActions];

  [v6 setBounds:{0.0, 0.0, size->width, size->height}];
  [v6 setCornerRadius:size->width * 0.5];
  CGAffineTransformMakeRotation(&v13, angle);
  v12 = v13;
  [v6 setAffineTransform:&v12];
  v8 = objc_alloc_init(UIView);
  v9 = +[UIColor clearColor];
  [v8 setBackgroundColor:v9];

  [v6 frame];
  [v8 setFrame:?];
  layer = [v8 layer];
  [layer addSublayer:v6];

  [v8 bounds];
  CLKRectGetCenter();
  [v6 setPosition:?];

  return v8;
}

- (id)_createLayer
{
  v2 = +[CALayer layer];
  _disabledLayerActions = [objc_opt_class() _disabledLayerActions];
  [v2 setActions:_disabledLayerActions];
  [v2 setBounds:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  return v2;
}

- (id)_createLayersWithCount:(unint64_t)count
{
  v4 = +[NSMutableArray array];
  _disabledLayerActions = [objc_opt_class() _disabledLayerActions];
  if (count)
  {
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    do
    {
      v9 = +[CALayer layer];
      [v9 setActions:_disabledLayerActions];
      [v9 setBounds:{CGRectZero.origin.x, y, width, height}];
      [v4 addObject:v9];

      --count;
    }

    while (count);
  }

  return v4;
}

+ (id)_disabledLayerActions
{
  +[NSNull null];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_630C;
  v8 = block[3] = &unk_1C7C0;
  v2 = qword_24418;
  v3 = v8;
  if (v2 != -1)
  {
    dispatch_once(&qword_24418, block);
  }

  v4 = qword_24420;
  v5 = qword_24420;

  return v4;
}

- (void)configureTicksForStatus:(BOOL)status
{
  v3 = __chkstk_darwin(self, a2);
  v5 = v4;
  v6 = v3;
  *(v3 + 8) = v4;
  v7 = *(v3 + 24);
  firstObject = [*(v3 + 88) firstObject];
  v9 = firstObject;
  if (v7 == 1)
  {
    v10 = *(v6 + 8);
  }

  else
  {
    v10 = 0;
  }

  [firstObject setHidden:v10 & 1];

  if (!*(v6 + 16) && *(v6 + 24) == 1)
  {
    sub_792C(*(v6 + 48), v20);
    v11 = [*(v6 + 104) objectAtIndexedSubscript:11];
    v12 = v21;
    if (v5)
    {
      v13 = v23;
    }

    else
    {
      v13 = v22;
    }

    v14 = [v6 pillLayerFromHourMarkerView:v11];
    [v14 setBounds:{0.0, 0.0, v12, v13}];

    v15 = [v6 hourMarkersCenterPointConstantsForStyle:*(v6 + 16) dial:*(v6 + 24)];
    v16 = v15[22];
    v17 = v15[23];
    if (v5)
    {
      device = [v6 device];
      CLKRoundForDevice();
      v17 = v17 + v19;
    }

    [v11 setCenter:{v16, v17}];
  }
}

- (void)setMinuteTicksColor:(id)color
{
  colorCopy = color;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sublayers = [(CALayer *)self->_minuteTicks sublayers];
  v6 = [sublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v10 + 1) + 8 * v9) setBackgroundColor:{objc_msgSend(colorCopy, "CGColor")}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [sublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setHourTicksColor:(id)color
{
  colorCopy = color;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sublayers = [(CALayer *)self->_hourTicks sublayers];
  v6 = [sublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v10 + 1) + 8 * v9) setBackgroundColor:{objc_msgSend(colorCopy, "CGColor")}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [sublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setCircularBezelTickAlpha:(double)alpha
{
  if (self->_circularBezelTickAlpha != alpha)
  {
    self->_circularBezelTickAlpha = alpha;
    [(NTKCaliforniaContentView *)self applyTransitionFractionToTicksFraction:self->_dial fromDial:self->_dial toDial:0.0];
  }
}

- (id)minuteTickColorForIndex:(unint64_t)index palette:(id)palette dial:(unint64_t)dial
{
  paletteCopy = palette;
  if ([paletteCopy isRainbowColor])
  {
    smallTick = [paletteCopy colorForCircularTicksForMinute:index];
  }

  else if (dial == 1)
  {
    smallTick = [paletteCopy smallTick];
  }

  else
  {
    if (dial)
    {
      goto LABEL_11;
    }

    if (self->_bezelComplicationEnabled)
    {
      [paletteCopy circularDialSubtickColor];
    }

    else
    {
      [paletteCopy smallTickCircular];
    }
    smallTick = ;
  }

  index = smallTick;
LABEL_11:

  return index;
}

- (id)hourTickColorForIndex:(unint64_t)index palette:(id)palette dial:(unint64_t)dial
{
  paletteCopy = palette;
  if ([paletteCopy isRainbowColor])
  {
    largeTick = [paletteCopy colorForCircularTicksForHour:index / 5];
  }

  else
  {
    if (dial == 1)
    {
      goto LABEL_7;
    }

    if (dial)
    {
      goto LABEL_9;
    }

    if (!self->_bezelComplicationEnabled)
    {
LABEL_7:
      largeTick = [paletteCopy largeTick];
    }

    else
    {
      largeTick = [paletteCopy circularDialTickColor];
    }
  }

  index = largeTick;
LABEL_9:

  return index;
}

- (id)tickColorForIndex:(unint64_t)index palette:(id)palette dial:(unint64_t)dial
{
  if (0xCCCCCCCCCCCCCCCDLL * index <= 0x3333333333333333)
  {
    [NTKCaliforniaContentView hourTickColorForIndex:"hourTickColorForIndex:palette:dial:" palette:? dial:?];
  }

  else
  {
    [NTKCaliforniaContentView minuteTickColorForIndex:"minuteTickColorForIndex:palette:dial:" palette:? dial:?];
  }
  v5 = ;

  return v5;
}

- (void)setTicksHiddenRange:(double)range
{
  v3 = __chkstk_darwin(self, a2);
  v5 = v4;
  v6 = v3;
  [v3 addTicksIfNeeded];
  memset(&v19[30], 0, 32);
  device = [v6 device];
  sub_792C(device, v19);

  v8 = [[NSMutableArray alloc] initWithCapacity:60];
  if ([v6[11] count])
  {
    v9 = 0;
    v10 = v5 * 0.5;
    do
    {
      v11 = *(&v19[300] + v9 + 1) + 1.57079633;
      if (v11 > 3.14159265)
      {
        v11 = 6.28318531 - v11;
      }

      if (v11 >= v10)
      {
        v12 = &off_1ED78;
      }

      else
      {
        v12 = &off_1ED90;
      }

      [v8 setObject:v12 atIndexedSubscript:v9];
      if (!v6[3])
      {
        v13 = [v8 objectAtIndexedSubscript:v9];
        [v13 doubleValue];
        v15 = v14;
        v16 = [v6[11] objectAtIndexedSubscript:v9];
        *&v17 = v15;
        [v16 setOpacity:v17];
      }

      ++v9;
    }

    while (v9 < [v6[11] count]);
  }

  v18 = v6[12];
  v6[12] = v8;
}

- (void)applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette
{
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  if ([paletteCopy isEqual:colorPaletteCopy])
  {
    [(NTKCaliforniaContentView *)self setColorPalette:colorPaletteCopy];
  }

  else
  {
    tickLayers = self->_tickLayers;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_6D44;
    v19[3] = &unk_1C7E8;
    v19[4] = self;
    v11 = paletteCopy;
    v20 = v11;
    v12 = colorPaletteCopy;
    v21 = v12;
    fractionCopy = fraction;
    [(NSArray *)tickLayers enumerateObjectsUsingBlock:v19];
    hourMarkers = self->_hourMarkers;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_6E24;
    v14[3] = &unk_1C810;
    v15 = v11;
    fractionCopy2 = fraction;
    v16 = v12;
    selfCopy = self;
    [(NSArray *)hourMarkers enumerateObjectsUsingBlock:v14];
  }
}

- (void)applyTransitionFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial
{
  toDialCopy = dial;
  if (dial == toDial)
  {

    [(NTKCaliforniaContentView *)self setDial:fraction];
  }

  else
  {
    [(NTKCaliforniaContentView *)self addTicksIfNeeded];
    CLKCompressFraction();
    [(NTKCaliforniaContentView *)self applyTransitionFractionToTicksFraction:toDialCopy fromDial:toDial toDial:fraction];
    if (self->_dial != toDial)
    {
      toDialCopy = toDial;
    }

    [(NTKCaliforniaContentView *)self _createTemporaryDigitsIfNeededWithStyle:self->_style dial:toDialCopy];
    CLKCompressFraction();
    v10 = v9;
    p_hourMarkers = &self->_hourMarkers;
    if ([(NSArray *)self->_hourMarkers count])
    {
      v12 = 0;
      v13 = 0;
      v14 = fmin(v10 + v10, 1.0);
      v15 = fmin(1.0 - v10 + 1.0 - v10, 1.0);
      do
      {
        if (toDialCopy == 1)
        {
          v16 = [(NSArray *)self->_temporaryHourMarkers objectAtIndex:v13];
          p_temporaryHourMarkers = &self->_hourMarkers;
        }

        else
        {
          v16 = [(NSArray *)*p_hourMarkers objectAtIndex:v13];
          p_temporaryHourMarkers = &self->_temporaryHourMarkers;
        }

        v18 = [(NSArray *)*p_temporaryHourMarkers objectAtIndex:v13];
        [v18 setAlpha:v14];
        [v16 setAlpha:v15];
        v19 = [(NTKCaliforniaContentView *)self hourMarkersCenterPointConstantsForStyle:self->_style dial:0];
        x = v19[v12].x;
        y = v19[v12].y;
        v22 = [(NTKCaliforniaContentView *)self hourMarkersCenterPointConstantsForStyle:self->_style dial:1];
        v23 = v22[v12].x;
        v24 = v22[v12].y;
        CLKInterpolateBetweenFloatsClipped();
        v26 = v25;
        CLKInterpolateBetweenFloatsClipped();
        v28 = v27;
        [v18 setCenter:{v26, v27}];
        [v16 setCenter:{v26, v28}];
        [v18 bounds];
        [v16 bounds];
        CLKInterpolateBetweenFloatsClipped();
        CGAffineTransformMakeScale(&v33, v29, v29);
        v32 = v33;
        [v16 setTransform:&v32];
        [v16 bounds];
        [v18 bounds];
        CLKInterpolateBetweenFloatsClipped();
        CGAffineTransformMakeScale(&v31, v30, v30);
        v32 = v31;
        [v18 setTransform:&v32];

        ++v13;
        ++v12;
      }

      while (v13 < [(NSArray *)*p_hourMarkers count]);
    }
  }
}

- (NTKCaliforniaStyleTransitionHandler)styleTransitionHandler
{
  styleTransitionHandler = self->_styleTransitionHandler;
  if (!styleTransitionHandler)
  {
    v4 = [NTKCaliforniaStyleTransitionHandler alloc];
    device = [(NTKCaliforniaContentView *)self device];
    v6 = [(NTKCaliforniaStyleTransitionHandler *)v4 initWithDevice:device];
    v7 = self->_styleTransitionHandler;
    self->_styleTransitionHandler = v6;

    [(NTKCaliforniaContentView *)self bounds];
    v9 = v8 * 0.5;
    [(NTKCaliforniaContentView *)self bounds];
    [(NTKCaliforniaStyleTransitionHandler *)self->_styleTransitionHandler setCenterPoint:v9, v10 * 0.5];
    styleTransitionHandler = self->_styleTransitionHandler;
  }

  return styleTransitionHandler;
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  if (style == toStyle)
  {

    [(NTKCaliforniaContentView *)self setStyle:fraction];
  }

  else
  {
    [(NTKCaliforniaContentView *)self _createDigitsIfNeededWithStyle:style dial:self->_dial];
    [(NTKCaliforniaContentView *)self _createTemporaryDigitsIfNeededWithStyle:toStyle dial:self->_dial];
    dial = self->_dial;
    styleTransitionHandler = [(NTKCaliforniaContentView *)self styleTransitionHandler];
    [styleTransitionHandler setDial:dial];

    styleTransitionHandler2 = [(NTKCaliforniaContentView *)self styleTransitionHandler];
    [styleTransitionHandler2 setFraction:fraction];

    styleTransitionHandler3 = [(NTKCaliforniaContentView *)self styleTransitionHandler];
    [styleTransitionHandler3 setHourMarkersCount:12];

    v13 = [(NTKCaliforniaContentView *)self hourMarkersCenterPointConstantsForStyle:style dial:self->_dial];
    styleTransitionHandler4 = [(NTKCaliforniaContentView *)self styleTransitionHandler];
    [styleTransitionHandler4 setFadeOutHourMarkersCenterPoints:v13];

    v15 = [(NTKCaliforniaContentView *)self hourMarkersCenterPointConstantsForStyle:toStyle dial:self->_dial];
    styleTransitionHandler5 = [(NTKCaliforniaContentView *)self styleTransitionHandler];
    [styleTransitionHandler5 setFadeInHourMarkersCenterPoints:v15];

    for (i = 0; i != 14; ++i)
    {
      if ([(NSArray *)self->_hourMarkers count]> i)
      {
        v18 = [(NSArray *)self->_hourMarkers objectAtIndexedSubscript:i];
        styleTransitionHandler6 = [(NTKCaliforniaContentView *)self styleTransitionHandler];
        [styleTransitionHandler6 opacityForMarkerAtIndex:i markerType:0];
        [v18 setAlpha:?];

        styleTransitionHandler7 = [(NTKCaliforniaContentView *)self styleTransitionHandler];
        [styleTransitionHandler7 positionForMarkerAtIndex:i markerType:0];
        [v18 setCenter:?];

        styleTransitionHandler8 = [(NTKCaliforniaContentView *)self styleTransitionHandler];
        v22 = styleTransitionHandler8;
        if (styleTransitionHandler8)
        {
          [styleTransitionHandler8 transformForMarkerAtIndex:i markerType:0];
        }

        else
        {
          v35 = 0u;
          v36 = 0u;
          v34 = 0u;
        }

        v31 = v34;
        v32 = v35;
        v33 = v36;
        [v18 setTransform:&v31];
      }

      if ([(NSArray *)self->_temporaryHourMarkers count]> i)
      {
        v23 = [(NSArray *)self->_temporaryHourMarkers objectAtIndexedSubscript:i];
        styleTransitionHandler9 = [(NTKCaliforniaContentView *)self styleTransitionHandler];
        [styleTransitionHandler9 opacityForMarkerAtIndex:i markerType:1];
        [v23 setAlpha:?];

        styleTransitionHandler10 = [(NTKCaliforniaContentView *)self styleTransitionHandler];
        [styleTransitionHandler10 positionForMarkerAtIndex:i markerType:1];
        [v23 setCenter:?];

        styleTransitionHandler11 = [(NTKCaliforniaContentView *)self styleTransitionHandler];
        v27 = styleTransitionHandler11;
        if (styleTransitionHandler11)
        {
          [styleTransitionHandler11 transformForMarkerAtIndex:i markerType:1];
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
        }

        v31 = v28;
        v32 = v29;
        v33 = v30;
        [v23 setTransform:{&v31, v28, v29, v30}];
      }
    }
  }
}

@end