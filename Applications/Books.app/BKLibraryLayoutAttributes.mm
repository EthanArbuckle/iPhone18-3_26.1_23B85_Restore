@interface BKLibraryLayoutAttributes
+ (void)initialize;
+ (void)setGlobalLayoutDebugMode:(int)mode;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation BKLibraryLayoutAttributes

+ (void)initialize
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___BKLibraryLayoutAttributes;
  objc_msgSendSuper2(&v6, "initialize");
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"BKLibraryBookshelfLayoutDebugEnabledUserDefaultsKey"];

    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    dword_100AF7420 = v5;
  }
}

+ (void)setGlobalLayoutDebugMode:(int)mode
{
  dword_100AF7420 = mode;
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:dword_100AF7420 == 2 forKey:@"BKLibraryBookshelfLayoutDebugEnabledUserDefaultsKey"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 synchronize];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = BKLibraryLayoutAttributes;
  v4 = [(BKLibraryLayoutAttributes *)&v8 copyWithZone:zone];
  objc_storeStrong(v4 + 2, self->_foregroundColor);
  v5 = [(NSDictionary *)self->_fontAttrs copy];
  v6 = v4[3];
  v4[3] = v5;

  *(v4 + 8) = self->_editable;
  objc_storeStrong(v4 + 5, self->_cellMetrics);
  objc_storeStrong(v4 + 4, self->_columnMetrics);
  objc_storeStrong(v4 + 6, self->_mainHeaderMetrics);
  *(v4 + 9) = self->_rtlLayout;
  *(v4 + 10) = self->_compactLayout;
  *(v4 + 11) = self->_verticalStackedLayout;
  *(v4 + 12) = self->_editMode;
  *(v4 + 13) = self->_firstItem;
  *(v4 + 14) = self->_lastItem;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v49.receiver = self;
  v49.super_class = BKLibraryLayoutAttributes;
  if ([(BKLibraryLayoutAttributes *)&v49 isEqual:?])
  {
    foregroundColor = [(BKLibraryLayoutAttributes *)self foregroundColor];
    foregroundColor2 = [equal foregroundColor];
    if (foregroundColor != foregroundColor2)
    {
      foregroundColor3 = [(BKLibraryLayoutAttributes *)self foregroundColor];
      foregroundColor4 = [equal foregroundColor];
      v48 = foregroundColor3;
      if (![foregroundColor3 isEqual:foregroundColor4])
      {
        LOBYTE(v10) = 0;
        goto LABEL_39;
      }
    }

    fontAttrs = [(BKLibraryLayoutAttributes *)self fontAttrs];
    fontAttrs2 = [equal fontAttrs];
    if (fontAttrs != fontAttrs2)
    {
      fontAttrs3 = [(BKLibraryLayoutAttributes *)self fontAttrs];
      fontAttrs4 = [equal fontAttrs];
      if (![fontAttrs3 isEqual:fontAttrs4])
      {
        LOBYTE(v10) = 0;
        goto LABEL_37;
      }

      v47 = fontAttrs3;
    }

    editable = [(BKLibraryLayoutAttributes *)self editable];
    if (editable != [equal editable])
    {
      LOBYTE(v10) = 0;
      fontAttrs3 = v47;
      if (fontAttrs == fontAttrs2)
      {
LABEL_38:

        if (foregroundColor == foregroundColor2)
        {
LABEL_40:

          return v10;
        }

LABEL_39:

        goto LABEL_40;
      }

LABEL_37:

      goto LABEL_38;
    }

    cellMetrics = [(BKLibraryLayoutAttributes *)self cellMetrics];
    cellMetrics2 = [equal cellMetrics];
    v46 = cellMetrics;
    v16 = cellMetrics == cellMetrics2;
    fontAttrs3 = v47;
    v44 = fontAttrs4;
    if (!v16)
    {
      cellMetrics3 = [(BKLibraryLayoutAttributes *)self cellMetrics];
      cellMetrics4 = [equal cellMetrics];
      v41 = cellMetrics3;
      if (![cellMetrics3 isEqual:?])
      {
        LOBYTE(v10) = 0;
        v23 = cellMetrics2;
        v20 = v46;
LABEL_35:

LABEL_36:
        fontAttrs4 = v44;
        if (fontAttrs == fontAttrs2)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    columnMetrics = [(BKLibraryLayoutAttributes *)self columnMetrics];
    columnMetrics2 = [equal columnMetrics];
    v43 = columnMetrics;
    if (columnMetrics != columnMetrics2)
    {
      columnMetrics3 = [(BKLibraryLayoutAttributes *)self columnMetrics];
      columnMetrics4 = [equal columnMetrics];
      v38 = columnMetrics3;
      if (![columnMetrics3 isEqual:?])
      {
        LOBYTE(v10) = 0;
        v20 = v46;
        v22 = columnMetrics2;
        v21 = v43;
LABEL_33:

LABEL_34:
        v23 = cellMetrics2;
        if (v20 == cellMetrics2)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    mainHeaderMetrics = [(BKLibraryLayoutAttributes *)self mainHeaderMetrics];
    mainHeaderMetrics2 = [equal mainHeaderMetrics];
    if (mainHeaderMetrics == mainHeaderMetrics2 || (-[BKLibraryLayoutAttributes mainHeaderMetrics](self, "mainHeaderMetrics"), v25 = objc_claimAutoreleasedReturnValue(), [equal mainHeaderMetrics], v35 = objc_claimAutoreleasedReturnValue(), v36 = v25, objc_msgSend(v25, "isEqual:")))
    {
      rtlLayout = [(BKLibraryLayoutAttributes *)self rtlLayout];
      if (rtlLayout == [equal rtlLayout] && (v28 = -[BKLibraryLayoutAttributes compactLayout](self, "compactLayout"), v28 == objc_msgSend(equal, "compactLayout")) && (v29 = -[BKLibraryLayoutAttributes verticalStackedLayout](self, "verticalStackedLayout"), v29 == objc_msgSend(equal, "verticalStackedLayout")) && (v30 = -[BKLibraryLayoutAttributes editMode](self, "editMode"), v30 == objc_msgSend(equal, "editMode")) && (v31 = -[BKLibraryLayoutAttributes firstItem](self, "firstItem"), v31 == objc_msgSend(equal, "firstItem")))
      {
        lastItem = [(BKLibraryLayoutAttributes *)self lastItem];
        v10 = lastItem ^ [equal lastItem] ^ 1;
        v32 = v10;
      }

      else
      {
        LOBYTE(v10) = 0;
        v32 = 0;
      }

      v26 = mainHeaderMetrics2;
      if (mainHeaderMetrics == mainHeaderMetrics2)
      {

        LOBYTE(v10) = v32;
LABEL_32:
        v22 = columnMetrics2;
        v21 = v43;
        v20 = v46;
        fontAttrs3 = v47;
        if (v43 == columnMetrics2)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
      v26 = mainHeaderMetrics2;
    }

    goto LABEL_32;
  }

  LOBYTE(v10) = 0;
  return v10;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = BKLibraryLayoutAttributes;
  v3 = [(BKLibraryLayoutAttributes *)&v6 description];
  v4 = [NSMutableString stringWithFormat:@"%@ ", v3];

  if (self->_cellMetrics)
  {
    [v4 appendFormat:@"cellMetrics: (%@); ", self->_cellMetrics];
  }

  return v4;
}

@end