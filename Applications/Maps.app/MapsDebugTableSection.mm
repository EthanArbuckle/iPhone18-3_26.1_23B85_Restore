@interface MapsDebugTableSection
- (MapsDebugTableSection)init;
- (MapsDebugValuesViewController)displayingViewController;
- (id)addButtonRowWithTitle:(id)title action:(id)action;
- (id)addCheckmarkRowsGroupForConfigKey:(id)key content:(id)content get:(id)get set:(id)set change:(id)change;
- (id)addCheckmarkRowsGroupWithContent:(id)content backingGeoConfigKey:(id)key get:(id)get set:(id)set;
- (id)addCheckmarkRowsGroupWithContent:(id)content defaultsKey:(id)key checkedRowValueIfUnset:(id)unset changeHandler:(id)handler;
- (id)addCheckmarkRowsGroupWithContent:(id)content object:(id)object key:(id)key;
- (id)addDateFieldRowWithTitle:(id)title get:(id)get set:(id)set;
- (id)addEmptySectionBannerRowWithTitle:(id)title;
- (id)addGEODateFieldRowWithTitle:(id)title placeholderText:(id)text geoConfigKeyDate:(id)date;
- (id)addGEOTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type geoConfigKeyDouble:(id)double;
- (id)addGEOTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type geoConfigKeyInteger:(id)integer;
- (id)addGEOTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type geoConfigKeyString:(id)string;
- (id)addGEOTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type geoConfigKeyUInteger:(id)integer;
- (id)addGEOTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type geoConfigKeyUint64:(id)uint64;
- (id)addIndeterminateProgressIndicator;
- (id)addMenuRowWithTitle:(id)title menu:(id)menu;
- (id)addNavigationRowForViewControllerClass:(Class)class;
- (id)addNavigationRowWithTitle:(id)title action:(id)action;
- (id)addNavigationRowWithTitle:(id)title viewControllerContent:(id)content;
- (id)addReadOnlyRowWithTitle:(id)title subtitle:(id)subtitle;
- (id)addReadOnlyRowWithTitle:(id)title value:(id)value;
- (id)addReadOnlyRowWithTitle:(id)title valueFormat:(id)format;
- (id)addSliderRowWithTitle:(id)title subtitleStringFormat:(id)format min:(double)min max:(double)max geoConfigKeyDouble:(id)double changeHandler:(id)handler;
- (id)addSliderRowWithTitle:(id)title subtitleStringFormat:(id)format min:(float)min max:(float)max defaultsKey:(id)key sliderValueIfUnset:(float)unset changeHandler:(id)handler;
- (id)addSliderRowWithTitle:(id)title subtitleStringFormat:(id)format min:(int64_t)min max:(int64_t)max geoConfigKeyInteger:(id)integer changeHandler:(id)handler;
- (id)addSliderRowWithTitle:(id)title subtitleStringFormat:(id)format min:(unint64_t)min max:(unint64_t)max geoConfigKeyUInteger:(id)integer changeHandler:(id)handler;
- (id)addSliderRowWithTitle:(id)title subtitleStringFormat:(id)format min:(unint64_t)min max:(unint64_t)max geoConfigKeyUint64:(id)uint64 changeHandler:(id)handler;
- (id)addSliderRowWithTitle:(id)title subtitleStringFormat:(id)format subtitleStringHandler:(id)handler min:(float)min max:(float)max get:(id)get set:(id)set;
- (id)addSliderRowWithTitle:(id)title subtitleStringHandler:(id)handler min:(double)min max:(double)max geoConfigKeyDouble:(id)double changeHandler:(id)changeHandler;
- (id)addSwitchRowWithTitle:(id)title defaultsKey:(id)key;
- (id)addSwitchRowWithTitle:(id)title defaultsKey:(id)key switchOnStateIfUnset:(BOOL)unset changeHandler:(id)handler;
- (id)addSwitchRowWithTitle:(id)title defaultsKey:(id)key userDefaults:(id)defaults switchOnStateIfUnset:(BOOL)unset changeHandler:(id)handler;
- (id)addSwitchRowWithTitle:(id)title geoConfigKey:(id)key;
- (id)addSwitchRowWithTitle:(id)title geoConfigKey:(id)key switchOnStateIfUnset:(BOOL)unset changeHandler:(id)handler;
- (id)addSwitchRowWithTitle:(id)title get:(id)get set:(id)set;
- (id)addTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type defaultsKey:(id)key;
- (id)addTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type get:(id)get set:(id)set;
- (id)description;
- (void)addRow:(id)row;
- (void)commit;
- (void)dealloc;
@end

@implementation MapsDebugTableSection

- (id)addCheckmarkRowsGroupWithContent:(id)content object:(id)object key:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100AA8D7C;
  v17[3] = &unk_101654B00;
  v18 = objectCopy;
  v19 = keyCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100AA8D88;
  v14[3] = &unk_1016331F0;
  v15 = v18;
  v16 = v19;
  v10 = v19;
  v11 = v18;
  v12 = [(MapsDebugTableSection *)self addCheckmarkRowsGroupWithContent:content get:v17 set:v14];

  return v12;
}

- (MapsDebugValuesViewController)displayingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_displayingViewController);

  return WeakRetained;
}

- (id)addMenuRowWithTitle:(id)title menu:(id)menu
{
  menuCopy = menu;
  titleCopy = title;
  v8 = objc_alloc_init(MapsDebugMenuRow);
  [(MapsDebugTableRow *)v8 setTitle:titleCopy];

  [(MapsDebugMenuRow *)v8 setMenu:menuCopy];
  [(MapsDebugTableRow *)v8 setSelectionAction:0];
  [(MapsDebugTableSection *)self addRow:v8];

  return v8;
}

- (id)addIndeterminateProgressIndicator
{
  v3 = objc_alloc_init(MapsDebugActivityIndicatorRow);
  [(MapsDebugTableSection *)self addRow:v3];

  return v3;
}

- (id)addCheckmarkRowsGroupForConfigKey:(id)key content:(id)content get:(id)get set:(id)set change:(id)change
{
  var1 = key.var1;
  v11 = *&key.var0;
  contentCopy = content;
  getCopy = get;
  setCopy = set;
  changeCopy = change;
  v44 = 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100DC48C4;
  v40[3] = &unk_101654B28;
  v16 = getCopy;
  v41 = v16;
  v42 = v11;
  v43 = var1;
  v26 = contentCopy;
  v17 = [MapsDebugCheckmarkRowsGroup rowsGroupContainingRows:&v44 withContent:contentCopy get:v40 set:0];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v18 = v44;
  v19 = [v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v19)
  {
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [(MapsDebugTableSection *)self addRow:*(*(&v36 + 1) + 8 * i)];
      }

      v19 = [v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v19);
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100DC491C;
  v32[3] = &unk_101654B50;
  v22 = setCopy;
  v33 = v22;
  v34 = v11;
  v35 = var1;
  [v17 setSelectionChanged:v32];
  objc_initWeak(&location, v17);
  v23 = &_dispatch_main_q;
  v28 = changeCopy;
  v29 = v16;
  objc_copyWeak(&v30, &location);
  v24 = _GEOConfigAddBlockListenerForKey();

  objc_setAssociatedObject(v17, &unk_10195F1B8, v24, 0x301);
  objc_destroyWeak(&v30);

  objc_destroyWeak(&location);

  return v17;
}

- (id)addCheckmarkRowsGroupWithContent:(id)content defaultsKey:(id)key checkedRowValueIfUnset:(id)unset changeHandler:(id)handler
{
  keyCopy = key;
  unsetCopy = unset;
  handlerCopy = handler;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100DC4BB8;
  v21[3] = &unk_101654B00;
  v22 = keyCopy;
  v23 = unsetCopy;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100DC4C24;
  v18[3] = &unk_101660BE0;
  v19 = v22;
  v20 = handlerCopy;
  v13 = handlerCopy;
  v14 = v22;
  v15 = unsetCopy;
  v16 = [(MapsDebugTableSection *)self addCheckmarkRowsGroupWithContent:content get:v21 set:v18];

  return v16;
}

- (id)addCheckmarkRowsGroupWithContent:(id)content backingGeoConfigKey:(id)key get:(id)get set:(id)set
{
  v18 = 0;
  v7 = [MapsDebugCheckmarkRowsGroup rowsGroupContainingRows:&v18 withContent:content backingGeoConfigKey:*&key.var0 get:key.var1 set:get, set];
  v8 = v18;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(MapsDebugTableSection *)self addRow:*(*(&v14 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)addReadOnlyRowWithTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  v8 = objc_alloc_init(MapsDebugReadOnlySubtitleRow);
  [(MapsDebugTableRow *)v8 setTitle:titleCopy];

  [(MapsDebugTableRow *)v8 setSubtitle:subtitleCopy];
  [(MapsDebugTableSection *)self addRow:v8];

  return v8;
}

- (id)addReadOnlyRowWithTitle:(id)title valueFormat:(id)format
{
  formatCopy = format;
  titleCopy = title;
  v8 = [[NSString alloc] initWithFormat:formatCopy arguments:&v12];

  v9 = [(MapsDebugTableSection *)self addReadOnlyRowWithTitle:titleCopy value:v8];

  return v9;
}

- (id)addReadOnlyRowWithTitle:(id)title value:(id)value
{
  valueCopy = value;
  titleCopy = title;
  v8 = objc_alloc_init(MapsDebugReadOnlyValueRow);
  [(MapsDebugTableRow *)v8 setTitle:titleCopy];

  [(MapsDebugTableRow *)v8 setSubtitle:valueCopy];
  [(MapsDebugTableSection *)self addRow:v8];

  return v8;
}

- (id)addDateFieldRowWithTitle:(id)title get:(id)get set:(id)set
{
  setCopy = set;
  getCopy = get;
  titleCopy = title;
  v11 = objc_alloc_init(MapsDebugDateFieldTableRow);
  [(MapsDebugTableRow *)v11 setTitle:titleCopy];

  [(MapsDebugDateFieldTableRow *)v11 setGet:getCopy];
  [(MapsDebugDateFieldTableRow *)v11 setSet:setCopy];

  [(MapsDebugTableSection *)self addRow:v11];

  return v11;
}

- (id)addGEODateFieldRowWithTitle:(id)title placeholderText:(id)text geoConfigKeyDate:(id)date
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100DC5160;
  v9[3] = &unk_101654AB8;
  dateCopy = date;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100DC516C;
  v7[3] = &unk_101654AD8;
  dateCopy2 = date;
  v5 = [(MapsDebugTableSection *)self addDateFieldRowWithTitle:title get:v9 set:v7];

  return v5;
}

- (id)addGEOTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type geoConfigKeyDouble:(id)double
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DC5240;
  v10[3] = &unk_101654A78;
  doubleCopy = double;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DC52A4;
  v8[3] = &unk_101654A98;
  doubleCopy2 = double;
  v6 = [(MapsDebugTableSection *)self addTextFieldRowWithTitle:title placeholderText:text inputType:type get:v10 set:v8];

  return v6;
}

- (id)addGEOTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type geoConfigKeyUint64:(id)uint64
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DC53A4;
  v10[3] = &unk_101654A78;
  uint64Copy = uint64;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DC540C;
  v8[3] = &unk_101654A98;
  uint64Copy2 = uint64;
  v6 = [(MapsDebugTableSection *)self addTextFieldRowWithTitle:title placeholderText:text inputType:type get:v10 set:v8];

  return v6;
}

- (id)addGEOTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type geoConfigKeyUInteger:(id)integer
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DC5510;
  v10[3] = &unk_101654A78;
  integerCopy = integer;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DC5578;
  v8[3] = &unk_101654A98;
  integerCopy2 = integer;
  v6 = [(MapsDebugTableSection *)self addTextFieldRowWithTitle:title placeholderText:text inputType:type get:v10 set:v8];

  return v6;
}

- (id)addGEOTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type geoConfigKeyInteger:(id)integer
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DC567C;
  v10[3] = &unk_101654A78;
  integerCopy = integer;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DC56E4;
  v8[3] = &unk_101654A98;
  integerCopy2 = integer;
  v6 = [(MapsDebugTableSection *)self addTextFieldRowWithTitle:title placeholderText:text inputType:type get:v10 set:v8];

  return v6;
}

- (id)addGEOTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type geoConfigKeyString:(id)string
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DC57E8;
  v10[3] = &unk_101654A78;
  stringCopy = string;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DC57F4;
  v8[3] = &unk_101654A98;
  stringCopy2 = string;
  v6 = [(MapsDebugTableSection *)self addTextFieldRowWithTitle:title placeholderText:text inputType:type get:v10 set:v8];

  return v6;
}

- (id)addTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type defaultsKey:(id)key
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100DC5934;
  v15[3] = &unk_101658E28;
  keyCopy = key;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100DC59BC;
  v13[3] = &unk_10165EF00;
  v14 = keyCopy;
  v10 = keyCopy;
  v11 = [(MapsDebugTableSection *)self addTextFieldRowWithTitle:title placeholderText:text inputType:type get:v15 set:v13];

  return v11;
}

- (id)addTextFieldRowWithTitle:(id)title placeholderText:(id)text inputType:(int64_t)type get:(id)get set:(id)set
{
  setCopy = set;
  getCopy = get;
  textCopy = text;
  titleCopy = title;
  v16 = objc_alloc_init(MapsDebugTextFieldTableRow);
  [(MapsDebugTableRow *)v16 setTitle:titleCopy];

  [(MapsDebugTextFieldTableRow *)v16 setPlaceholderText:textCopy];
  [(MapsDebugTextFieldTableRow *)v16 setInputType:type];
  [(MapsDebugTextFieldTableRow *)v16 setGet:getCopy];

  [(MapsDebugTextFieldTableRow *)v16 setSet:setCopy];
  [(MapsDebugTableSection *)self addRow:v16];

  return v16;
}

- (id)addSliderRowWithTitle:(id)title subtitleStringHandler:(id)handler min:(double)min max:(double)max geoConfigKeyDouble:(id)double changeHandler:(id)changeHandler
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100DC5C80;
  v23[3] = &unk_1016549B0;
  doubleCopy = double;
  minCopy = min;
  maxCopy = max;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100DC5CBC;
  v18[3] = &unk_1016549D8;
  minCopy2 = min;
  maxCopy2 = max;
  doubleCopy2 = double;
  changeHandlerCopy = changeHandler;
  v13 = changeHandlerCopy;
  v11 = minCopy;
  *&v14 = v11;
  v12 = maxCopy;
  *&v15 = v12;
  v16 = [(MapsDebugTableSection *)self addSliderRowWithTitle:title subtitleStringFormat:0 subtitleStringHandler:handler min:v23 max:v18 get:v14 set:v15];

  return v16;
}

- (id)addSliderRowWithTitle:(id)title subtitleStringFormat:(id)format min:(double)min max:(double)max geoConfigKeyDouble:(id)double changeHandler:(id)handler
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100DC5E88;
  v23[3] = &unk_1016549B0;
  doubleCopy = double;
  minCopy = min;
  maxCopy = max;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100DC5EC4;
  v18[3] = &unk_1016549D8;
  minCopy2 = min;
  maxCopy2 = max;
  doubleCopy2 = double;
  handlerCopy = handler;
  v13 = handlerCopy;
  v11 = minCopy;
  *&v14 = v11;
  v12 = maxCopy;
  *&v15 = v12;
  v16 = [(MapsDebugTableSection *)self addSliderRowWithTitle:title subtitleStringFormat:format min:v23 max:v18 get:v14 set:v15];

  return v16;
}

- (id)addSliderRowWithTitle:(id)title subtitleStringFormat:(id)format min:(unint64_t)min max:(unint64_t)max geoConfigKeyUint64:(id)uint64 changeHandler:(id)handler
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100DC60A0;
  v21[3] = &unk_1016549B0;
  uint64Copy = uint64;
  minCopy = min;
  maxCopy = max;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100DC60E4;
  v16[3] = &unk_1016549D8;
  maxCopy2 = max;
  uint64Copy2 = uint64;
  handlerCopy = handler;
  v18 = minCopy;
  v11 = handlerCopy;
  *&v12 = minCopy;
  *&v13 = maxCopy;
  v14 = [(MapsDebugTableSection *)self addSliderRowWithTitle:title subtitleStringFormat:format min:v21 max:v16 get:v12 set:v13];
  [v14 setValidate:&stru_101654A58];

  return v14;
}

- (id)addSliderRowWithTitle:(id)title subtitleStringFormat:(id)format min:(unint64_t)min max:(unint64_t)max geoConfigKeyUInteger:(id)integer changeHandler:(id)handler
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100DC62C4;
  v21[3] = &unk_1016549B0;
  integerCopy = integer;
  minCopy = min;
  maxCopy = max;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100DC6308;
  v16[3] = &unk_1016549D8;
  maxCopy2 = max;
  integerCopy2 = integer;
  handlerCopy = handler;
  v18 = minCopy;
  v11 = handlerCopy;
  *&v12 = minCopy;
  *&v13 = maxCopy;
  v14 = [(MapsDebugTableSection *)self addSliderRowWithTitle:title subtitleStringFormat:format min:v21 max:v16 get:v12 set:v13];
  [v14 setValidate:&stru_101654A38];

  return v14;
}

- (id)addSliderRowWithTitle:(id)title subtitleStringFormat:(id)format min:(int64_t)min max:(int64_t)max geoConfigKeyInteger:(id)integer changeHandler:(id)handler
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100DC64E8;
  v21[3] = &unk_1016549B0;
  integerCopy = integer;
  minCopy = min;
  maxCopy = max;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100DC652C;
  v16[3] = &unk_1016549D8;
  maxCopy2 = max;
  integerCopy2 = integer;
  handlerCopy = handler;
  v18 = minCopy;
  v11 = handlerCopy;
  *&v12 = minCopy;
  *&v13 = maxCopy;
  v14 = [(MapsDebugTableSection *)self addSliderRowWithTitle:title subtitleStringFormat:format min:v21 max:v16 get:v12 set:v13];
  [v14 setValidate:&stru_101654A18];

  return v14;
}

- (id)addSliderRowWithTitle:(id)title subtitleStringFormat:(id)format min:(float)min max:(float)max defaultsKey:(id)key sliderValueIfUnset:(float)unset changeHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100DC6720;
  v27[3] = &unk_101654968;
  v28 = keyCopy;
  unsetCopy = unset;
  maxCopy = max;
  minCopy = min;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100DC67A4;
  v24[3] = &unk_101654990;
  v25 = v28;
  v26 = handlerCopy;
  v18 = handlerCopy;
  v19 = v28;
  *&v20 = min;
  *&v21 = max;
  v22 = [(MapsDebugTableSection *)self addSliderRowWithTitle:title subtitleStringFormat:format min:v27 max:v24 get:v20 set:v21];

  return v22;
}

- (id)addSliderRowWithTitle:(id)title subtitleStringFormat:(id)format subtitleStringHandler:(id)handler min:(float)min max:(float)max get:(id)get set:(id)set
{
  formatCopy = format;
  handlerCopy = handler;
  getCopy = get;
  setCopy = set;
  titleCopy = title;
  v21 = objc_alloc_init(MapsDebugSliderTableRow);
  [(MapsDebugTableRow *)v21 setTitle:titleCopy];

  *&v22 = min;
  [(MapsDebugSliderTableRow *)v21 setMinimum:v22];
  *&v23 = max;
  [(MapsDebugSliderTableRow *)v21 setMaximum:v23];
  [(MapsDebugSliderTableRow *)v21 setGet:getCopy];
  [(MapsDebugSliderTableRow *)v21 setSet:setCopy];

  [(MapsDebugSliderTableRow *)v21 setSubtitleFormatString:formatCopy];
  [(MapsDebugSliderTableRow *)v21 setSubtitleHandler:handlerCopy];
  if (getCopy)
  {
    if (handlerCopy)
    {
      getCopy[2](getCopy);
      v24 = handlerCopy[2](handlerCopy);
      [(MapsDebugTableRow *)v21 setSubtitle:v24];
    }

    else if (formatCopy)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100DC6A4C;
      v28[3] = &unk_101654940;
      v29 = formatCopy;
      v25 = objc_retainBlock(v28);
      getCopy[2](getCopy);
      v26 = (v25[2])(v25);
      [(MapsDebugTableRow *)v21 setSubtitle:v26];

      [(MapsDebugSliderTableRow *)v21 setSubtitleHandler:v25];
    }
  }

  [(MapsDebugTableSection *)self addRow:v21];

  return v21;
}

- (id)addSwitchRowWithTitle:(id)title get:(id)get set:(id)set
{
  setCopy = set;
  getCopy = get;
  titleCopy = title;
  v11 = objc_alloc_init(MapsDebugSwitchTableRow);
  [(MapsDebugTableRow *)v11 setTitle:titleCopy];

  [(MapsDebugSwitchTableRow *)v11 setGet:getCopy];
  [(MapsDebugSwitchTableRow *)v11 setSet:setCopy];

  [(MapsDebugTableSection *)self addRow:v11];

  return v11;
}

- (id)addSwitchRowWithTitle:(id)title geoConfigKey:(id)key switchOnStateIfUnset:(BOOL)unset changeHandler:(id)handler
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100DC6C88;
  v14[3] = &unk_1016548F0;
  keyCopy = key;
  unsetCopy = unset;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100DC6CDC;
  v11[3] = &unk_101654918;
  keyCopy2 = key;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = [(MapsDebugTableSection *)self addSwitchRowWithTitle:title get:v14 set:v11];

  return v9;
}

- (id)addSwitchRowWithTitle:(id)title geoConfigKey:(id)key
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DC6E04;
  v8[3] = &unk_1016548B0;
  keyCopy = key;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100DC6E10;
  v6[3] = &unk_1016548D0;
  keyCopy2 = key;
  v4 = [(MapsDebugTableSection *)self addSwitchRowWithTitle:title get:v8 set:v6];

  return v4;
}

- (id)addSwitchRowWithTitle:(id)title defaultsKey:(id)key userDefaults:(id)defaults switchOnStateIfUnset:(BOOL)unset changeHandler:(id)handler
{
  keyCopy = key;
  defaultsCopy = defaults;
  handlerCopy = handler;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100DC6FA8;
  v24[3] = &unk_101654890;
  v25 = defaultsCopy;
  v26 = keyCopy;
  unsetCopy = unset;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100DC7008;
  v20[3] = &unk_10165D3A0;
  v21 = v25;
  v22 = v26;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = v26;
  v17 = v25;
  v18 = [(MapsDebugTableSection *)self addSwitchRowWithTitle:title get:v24 set:v20];

  return v18;
}

- (id)addSwitchRowWithTitle:(id)title defaultsKey:(id)key switchOnStateIfUnset:(BOOL)unset changeHandler:(id)handler
{
  unsetCopy = unset;
  handlerCopy = handler;
  keyCopy = key;
  titleCopy = title;
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [(MapsDebugTableSection *)self addSwitchRowWithTitle:titleCopy defaultsKey:keyCopy userDefaults:v13 switchOnStateIfUnset:unsetCopy changeHandler:handlerCopy];

  return v14;
}

- (id)addSwitchRowWithTitle:(id)title defaultsKey:(id)key
{
  keyCopy = key;
  titleCopy = title;
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [(MapsDebugTableSection *)self addSwitchRowWithTitle:titleCopy userDefaults:v8 defaultsKey:keyCopy];

  return v9;
}

- (id)addNavigationRowWithTitle:(id)title viewControllerContent:(id)content
{
  contentCopy = content;
  titleCopy = title;
  v8 = objc_alloc_init(MapsDebugNavigationTableRow);
  [(MapsDebugTableRow *)v8 setPrepareContentBlock:contentCopy];

  [(MapsDebugTableRow *)v8 setTitle:titleCopy];
  [(MapsDebugTableSection *)self addRow:v8];

  return v8;
}

- (id)addNavigationRowForViewControllerClass:(Class)class
{
  if (class)
  {
    v5 = objc_alloc_init(MapsDebugNavigationTableRow);
    [(MapsDebugNavigationTableRow *)v5 setViewControllerClass:class];
    [(MapsDebugTableSection *)self addRow:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)addNavigationRowWithTitle:(id)title action:(id)action
{
  actionCopy = action;
  titleCopy = title;
  v8 = objc_alloc_init(MapsDebugNavigationTableRow);
  [(MapsDebugTableRow *)v8 setTitle:titleCopy];

  [(MapsDebugTableRow *)v8 setSelectionAction:actionCopy];
  [(MapsDebugTableSection *)self addRow:v8];

  return v8;
}

- (id)addEmptySectionBannerRowWithTitle:(id)title
{
  titleCopy = title;
  v5 = objc_alloc_init(MapsDebugEmptySectionBannerRow);
  [(MapsDebugTableRow *)v5 setTitle:titleCopy];

  [(MapsDebugTableSection *)self addRow:v5];

  return v5;
}

- (id)addButtonRowWithTitle:(id)title action:(id)action
{
  actionCopy = action;
  titleCopy = title;
  v8 = objc_alloc_init(MapsDebugActionTableRow);
  [(MapsDebugTableRow *)v8 setTitle:titleCopy];

  [(MapsDebugActionTableRow *)v8 setSelectionAction:actionCopy];
  [(MapsDebugTableSection *)self addRow:v8];

  return v8;
}

- (void)commit
{
  mutableRows = self->_mutableRows;
  if (mutableRows)
  {
    v4 = [(NSMutableArray *)mutableRows copy];
    rows = self->_rows;
    self->_rows = v4;

    v6 = self->_mutableRows;
    self->_mutableRows = 0;
  }
}

- (void)addRow:(id)row
{
  rowCopy = row;
  if (!self->_mutableRows)
  {
    rows = self->_rows;
    if (rows)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = rows;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        do
        {
          v10 = 0;
          do
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v14 + 1) + 8 * v10) setSection:{0, v14}];
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
      }

      v11 = self->_rows;
      self->_rows = 0;
    }

    v12 = objc_alloc_init(NSMutableArray);
    mutableRows = self->_mutableRows;
    self->_mutableRows = v12;
  }

  [rowCopy setSection:{self, v14}];
  [(NSMutableArray *)self->_mutableRows addObject:rowCopy];
}

- (id)description
{
  v3 = objc_opt_class();
  title = [(MapsDebugTableSection *)self title];
  rows = [(MapsDebugTableSection *)self rows];
  v6 = [NSString stringWithFormat:@"<%@: %p title:%@ rows:%@>", v3, self, title, rows];

  return v6;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_rows;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) setSection:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = MapsDebugTableSection;
  [(MapsDebugTableSection *)&v8 dealloc];
}

- (MapsDebugTableSection)init
{
  v3.receiver = self;
  v3.super_class = MapsDebugTableSection;
  result = [(MapsDebugTableSection *)&v3 init];
  if (result)
  {
    result->_visible = 1;
  }

  return result;
}

@end