@interface MapsDebugTableSection
- (MapsDebugTableSection)init;
- (MapsDebugValuesViewController)displayingViewController;
- (id)addButtonRowWithTitle:(id)a3 action:(id)a4;
- (id)addCheckmarkRowsGroupForConfigKey:(id)a3 content:(id)a4 get:(id)a5 set:(id)a6 change:(id)a7;
- (id)addCheckmarkRowsGroupWithContent:(id)a3 backingGeoConfigKey:(id)a4 get:(id)a5 set:(id)a6;
- (id)addCheckmarkRowsGroupWithContent:(id)a3 defaultsKey:(id)a4 checkedRowValueIfUnset:(id)a5 changeHandler:(id)a6;
- (id)addCheckmarkRowsGroupWithContent:(id)a3 object:(id)a4 key:(id)a5;
- (id)addDateFieldRowWithTitle:(id)a3 get:(id)a4 set:(id)a5;
- (id)addEmptySectionBannerRowWithTitle:(id)a3;
- (id)addGEODateFieldRowWithTitle:(id)a3 placeholderText:(id)a4 geoConfigKeyDate:(id)a5;
- (id)addGEOTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 geoConfigKeyDouble:(id)a6;
- (id)addGEOTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 geoConfigKeyInteger:(id)a6;
- (id)addGEOTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 geoConfigKeyString:(id)a6;
- (id)addGEOTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 geoConfigKeyUInteger:(id)a6;
- (id)addGEOTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 geoConfigKeyUint64:(id)a6;
- (id)addIndeterminateProgressIndicator;
- (id)addMenuRowWithTitle:(id)a3 menu:(id)a4;
- (id)addNavigationRowForViewControllerClass:(Class)a3;
- (id)addNavigationRowWithTitle:(id)a3 action:(id)a4;
- (id)addNavigationRowWithTitle:(id)a3 viewControllerContent:(id)a4;
- (id)addReadOnlyRowWithTitle:(id)a3 subtitle:(id)a4;
- (id)addReadOnlyRowWithTitle:(id)a3 value:(id)a4;
- (id)addReadOnlyRowWithTitle:(id)a3 valueFormat:(id)a4;
- (id)addSliderRowWithTitle:(id)a3 subtitleStringFormat:(id)a4 min:(double)a5 max:(double)a6 geoConfigKeyDouble:(id)a7 changeHandler:(id)a8;
- (id)addSliderRowWithTitle:(id)a3 subtitleStringFormat:(id)a4 min:(float)a5 max:(float)a6 defaultsKey:(id)a7 sliderValueIfUnset:(float)a8 changeHandler:(id)a9;
- (id)addSliderRowWithTitle:(id)a3 subtitleStringFormat:(id)a4 min:(int64_t)a5 max:(int64_t)a6 geoConfigKeyInteger:(id)a7 changeHandler:(id)a8;
- (id)addSliderRowWithTitle:(id)a3 subtitleStringFormat:(id)a4 min:(unint64_t)a5 max:(unint64_t)a6 geoConfigKeyUInteger:(id)a7 changeHandler:(id)a8;
- (id)addSliderRowWithTitle:(id)a3 subtitleStringFormat:(id)a4 min:(unint64_t)a5 max:(unint64_t)a6 geoConfigKeyUint64:(id)a7 changeHandler:(id)a8;
- (id)addSliderRowWithTitle:(id)a3 subtitleStringFormat:(id)a4 subtitleStringHandler:(id)a5 min:(float)a6 max:(float)a7 get:(id)a8 set:(id)a9;
- (id)addSliderRowWithTitle:(id)a3 subtitleStringHandler:(id)a4 min:(double)a5 max:(double)a6 geoConfigKeyDouble:(id)a7 changeHandler:(id)a8;
- (id)addSwitchRowWithTitle:(id)a3 defaultsKey:(id)a4;
- (id)addSwitchRowWithTitle:(id)a3 defaultsKey:(id)a4 switchOnStateIfUnset:(BOOL)a5 changeHandler:(id)a6;
- (id)addSwitchRowWithTitle:(id)a3 defaultsKey:(id)a4 userDefaults:(id)a5 switchOnStateIfUnset:(BOOL)a6 changeHandler:(id)a7;
- (id)addSwitchRowWithTitle:(id)a3 geoConfigKey:(id)a4;
- (id)addSwitchRowWithTitle:(id)a3 geoConfigKey:(id)a4 switchOnStateIfUnset:(BOOL)a5 changeHandler:(id)a6;
- (id)addSwitchRowWithTitle:(id)a3 get:(id)a4 set:(id)a5;
- (id)addTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 defaultsKey:(id)a6;
- (id)addTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 get:(id)a6 set:(id)a7;
- (id)description;
- (void)addRow:(id)a3;
- (void)commit;
- (void)dealloc;
@end

@implementation MapsDebugTableSection

- (id)addCheckmarkRowsGroupWithContent:(id)a3 object:(id)a4 key:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100AA8D7C;
  v17[3] = &unk_101654B00;
  v18 = v8;
  v19 = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100AA8D88;
  v14[3] = &unk_1016331F0;
  v15 = v18;
  v16 = v19;
  v10 = v19;
  v11 = v18;
  v12 = [(MapsDebugTableSection *)self addCheckmarkRowsGroupWithContent:a3 get:v17 set:v14];

  return v12;
}

- (MapsDebugValuesViewController)displayingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_displayingViewController);

  return WeakRetained;
}

- (id)addMenuRowWithTitle:(id)a3 menu:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(MapsDebugMenuRow);
  [(MapsDebugTableRow *)v8 setTitle:v7];

  [(MapsDebugMenuRow *)v8 setMenu:v6];
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

- (id)addCheckmarkRowsGroupForConfigKey:(id)a3 content:(id)a4 get:(id)a5 set:(id)a6 change:(id)a7
{
  var1 = a3.var1;
  v11 = *&a3.var0;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v27 = a7;
  v44 = 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100DC48C4;
  v40[3] = &unk_101654B28;
  v16 = v14;
  v41 = v16;
  v42 = v11;
  v43 = var1;
  v26 = v13;
  v17 = [MapsDebugCheckmarkRowsGroup rowsGroupContainingRows:&v44 withContent:v13 get:v40 set:0];
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
  v22 = v15;
  v33 = v22;
  v34 = v11;
  v35 = var1;
  [v17 setSelectionChanged:v32];
  objc_initWeak(&location, v17);
  v23 = &_dispatch_main_q;
  v28 = v27;
  v29 = v16;
  objc_copyWeak(&v30, &location);
  v24 = _GEOConfigAddBlockListenerForKey();

  objc_setAssociatedObject(v17, &unk_10195F1B8, v24, 0x301);
  objc_destroyWeak(&v30);

  objc_destroyWeak(&location);

  return v17;
}

- (id)addCheckmarkRowsGroupWithContent:(id)a3 defaultsKey:(id)a4 checkedRowValueIfUnset:(id)a5 changeHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100DC4BB8;
  v21[3] = &unk_101654B00;
  v22 = v10;
  v23 = v11;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100DC4C24;
  v18[3] = &unk_101660BE0;
  v19 = v22;
  v20 = v12;
  v13 = v12;
  v14 = v22;
  v15 = v11;
  v16 = [(MapsDebugTableSection *)self addCheckmarkRowsGroupWithContent:a3 get:v21 set:v18];

  return v16;
}

- (id)addCheckmarkRowsGroupWithContent:(id)a3 backingGeoConfigKey:(id)a4 get:(id)a5 set:(id)a6
{
  v18 = 0;
  v7 = [MapsDebugCheckmarkRowsGroup rowsGroupContainingRows:&v18 withContent:a3 backingGeoConfigKey:*&a4.var0 get:a4.var1 set:a5, a6];
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

- (id)addReadOnlyRowWithTitle:(id)a3 subtitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(MapsDebugReadOnlySubtitleRow);
  [(MapsDebugTableRow *)v8 setTitle:v7];

  [(MapsDebugTableRow *)v8 setSubtitle:v6];
  [(MapsDebugTableSection *)self addRow:v8];

  return v8;
}

- (id)addReadOnlyRowWithTitle:(id)a3 valueFormat:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NSString alloc] initWithFormat:v6 arguments:&v12];

  v9 = [(MapsDebugTableSection *)self addReadOnlyRowWithTitle:v7 value:v8];

  return v9;
}

- (id)addReadOnlyRowWithTitle:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(MapsDebugReadOnlyValueRow);
  [(MapsDebugTableRow *)v8 setTitle:v7];

  [(MapsDebugTableRow *)v8 setSubtitle:v6];
  [(MapsDebugTableSection *)self addRow:v8];

  return v8;
}

- (id)addDateFieldRowWithTitle:(id)a3 get:(id)a4 set:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(MapsDebugDateFieldTableRow);
  [(MapsDebugTableRow *)v11 setTitle:v10];

  [(MapsDebugDateFieldTableRow *)v11 setGet:v9];
  [(MapsDebugDateFieldTableRow *)v11 setSet:v8];

  [(MapsDebugTableSection *)self addRow:v11];

  return v11;
}

- (id)addGEODateFieldRowWithTitle:(id)a3 placeholderText:(id)a4 geoConfigKeyDate:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100DC5160;
  v9[3] = &unk_101654AB8;
  v10 = a5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100DC516C;
  v7[3] = &unk_101654AD8;
  v8 = a5;
  v5 = [(MapsDebugTableSection *)self addDateFieldRowWithTitle:a3 get:v9 set:v7];

  return v5;
}

- (id)addGEOTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 geoConfigKeyDouble:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DC5240;
  v10[3] = &unk_101654A78;
  v11 = a6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DC52A4;
  v8[3] = &unk_101654A98;
  v9 = a6;
  v6 = [(MapsDebugTableSection *)self addTextFieldRowWithTitle:a3 placeholderText:a4 inputType:a5 get:v10 set:v8];

  return v6;
}

- (id)addGEOTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 geoConfigKeyUint64:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DC53A4;
  v10[3] = &unk_101654A78;
  v11 = a6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DC540C;
  v8[3] = &unk_101654A98;
  v9 = a6;
  v6 = [(MapsDebugTableSection *)self addTextFieldRowWithTitle:a3 placeholderText:a4 inputType:a5 get:v10 set:v8];

  return v6;
}

- (id)addGEOTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 geoConfigKeyUInteger:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DC5510;
  v10[3] = &unk_101654A78;
  v11 = a6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DC5578;
  v8[3] = &unk_101654A98;
  v9 = a6;
  v6 = [(MapsDebugTableSection *)self addTextFieldRowWithTitle:a3 placeholderText:a4 inputType:a5 get:v10 set:v8];

  return v6;
}

- (id)addGEOTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 geoConfigKeyInteger:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DC567C;
  v10[3] = &unk_101654A78;
  v11 = a6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DC56E4;
  v8[3] = &unk_101654A98;
  v9 = a6;
  v6 = [(MapsDebugTableSection *)self addTextFieldRowWithTitle:a3 placeholderText:a4 inputType:a5 get:v10 set:v8];

  return v6;
}

- (id)addGEOTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 geoConfigKeyString:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100DC57E8;
  v10[3] = &unk_101654A78;
  v11 = a6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DC57F4;
  v8[3] = &unk_101654A98;
  v9 = a6;
  v6 = [(MapsDebugTableSection *)self addTextFieldRowWithTitle:a3 placeholderText:a4 inputType:a5 get:v10 set:v8];

  return v6;
}

- (id)addTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 defaultsKey:(id)a6
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100DC5934;
  v15[3] = &unk_101658E28;
  v16 = a6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100DC59BC;
  v13[3] = &unk_10165EF00;
  v14 = v16;
  v10 = v16;
  v11 = [(MapsDebugTableSection *)self addTextFieldRowWithTitle:a3 placeholderText:a4 inputType:a5 get:v15 set:v13];

  return v11;
}

- (id)addTextFieldRowWithTitle:(id)a3 placeholderText:(id)a4 inputType:(int64_t)a5 get:(id)a6 set:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(MapsDebugTextFieldTableRow);
  [(MapsDebugTableRow *)v16 setTitle:v15];

  [(MapsDebugTextFieldTableRow *)v16 setPlaceholderText:v14];
  [(MapsDebugTextFieldTableRow *)v16 setInputType:a5];
  [(MapsDebugTextFieldTableRow *)v16 setGet:v13];

  [(MapsDebugTextFieldTableRow *)v16 setSet:v12];
  [(MapsDebugTableSection *)self addRow:v16];

  return v16;
}

- (id)addSliderRowWithTitle:(id)a3 subtitleStringHandler:(id)a4 min:(double)a5 max:(double)a6 geoConfigKeyDouble:(id)a7 changeHandler:(id)a8
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100DC5C80;
  v23[3] = &unk_1016549B0;
  v24 = a7;
  v25 = a5;
  v26 = a6;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100DC5CBC;
  v18[3] = &unk_1016549D8;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v19 = a8;
  v13 = v19;
  v11 = v25;
  *&v14 = v11;
  v12 = v26;
  *&v15 = v12;
  v16 = [(MapsDebugTableSection *)self addSliderRowWithTitle:a3 subtitleStringFormat:0 subtitleStringHandler:a4 min:v23 max:v18 get:v14 set:v15];

  return v16;
}

- (id)addSliderRowWithTitle:(id)a3 subtitleStringFormat:(id)a4 min:(double)a5 max:(double)a6 geoConfigKeyDouble:(id)a7 changeHandler:(id)a8
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100DC5E88;
  v23[3] = &unk_1016549B0;
  v24 = a7;
  v25 = a5;
  v26 = a6;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100DC5EC4;
  v18[3] = &unk_1016549D8;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v19 = a8;
  v13 = v19;
  v11 = v25;
  *&v14 = v11;
  v12 = v26;
  *&v15 = v12;
  v16 = [(MapsDebugTableSection *)self addSliderRowWithTitle:a3 subtitleStringFormat:a4 min:v23 max:v18 get:v14 set:v15];

  return v16;
}

- (id)addSliderRowWithTitle:(id)a3 subtitleStringFormat:(id)a4 min:(unint64_t)a5 max:(unint64_t)a6 geoConfigKeyUint64:(id)a7 changeHandler:(id)a8
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100DC60A0;
  v21[3] = &unk_1016549B0;
  v22 = a7;
  v23 = a5;
  v24 = a6;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100DC60E4;
  v16[3] = &unk_1016549D8;
  v19 = a6;
  v20 = a7;
  v17 = a8;
  v18 = v23;
  v11 = v17;
  *&v12 = v23;
  *&v13 = v24;
  v14 = [(MapsDebugTableSection *)self addSliderRowWithTitle:a3 subtitleStringFormat:a4 min:v21 max:v16 get:v12 set:v13];
  [v14 setValidate:&stru_101654A58];

  return v14;
}

- (id)addSliderRowWithTitle:(id)a3 subtitleStringFormat:(id)a4 min:(unint64_t)a5 max:(unint64_t)a6 geoConfigKeyUInteger:(id)a7 changeHandler:(id)a8
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100DC62C4;
  v21[3] = &unk_1016549B0;
  v22 = a7;
  v23 = a5;
  v24 = a6;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100DC6308;
  v16[3] = &unk_1016549D8;
  v19 = a6;
  v20 = a7;
  v17 = a8;
  v18 = v23;
  v11 = v17;
  *&v12 = v23;
  *&v13 = v24;
  v14 = [(MapsDebugTableSection *)self addSliderRowWithTitle:a3 subtitleStringFormat:a4 min:v21 max:v16 get:v12 set:v13];
  [v14 setValidate:&stru_101654A38];

  return v14;
}

- (id)addSliderRowWithTitle:(id)a3 subtitleStringFormat:(id)a4 min:(int64_t)a5 max:(int64_t)a6 geoConfigKeyInteger:(id)a7 changeHandler:(id)a8
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100DC64E8;
  v21[3] = &unk_1016549B0;
  v22 = a7;
  v23 = a5;
  v24 = a6;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100DC652C;
  v16[3] = &unk_1016549D8;
  v19 = a6;
  v20 = a7;
  v17 = a8;
  v18 = v23;
  v11 = v17;
  *&v12 = v23;
  *&v13 = v24;
  v14 = [(MapsDebugTableSection *)self addSliderRowWithTitle:a3 subtitleStringFormat:a4 min:v21 max:v16 get:v12 set:v13];
  [v14 setValidate:&stru_101654A18];

  return v14;
}

- (id)addSliderRowWithTitle:(id)a3 subtitleStringFormat:(id)a4 min:(float)a5 max:(float)a6 defaultsKey:(id)a7 sliderValueIfUnset:(float)a8 changeHandler:(id)a9
{
  v16 = a7;
  v17 = a9;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100DC6720;
  v27[3] = &unk_101654968;
  v28 = v16;
  v29 = a8;
  v30 = a6;
  v31 = a5;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100DC67A4;
  v24[3] = &unk_101654990;
  v25 = v28;
  v26 = v17;
  v18 = v17;
  v19 = v28;
  *&v20 = a5;
  *&v21 = a6;
  v22 = [(MapsDebugTableSection *)self addSliderRowWithTitle:a3 subtitleStringFormat:a4 min:v27 max:v24 get:v20 set:v21];

  return v22;
}

- (id)addSliderRowWithTitle:(id)a3 subtitleStringFormat:(id)a4 subtitleStringHandler:(id)a5 min:(float)a6 max:(float)a7 get:(id)a8 set:(id)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v20 = a3;
  v21 = objc_alloc_init(MapsDebugSliderTableRow);
  [(MapsDebugTableRow *)v21 setTitle:v20];

  *&v22 = a6;
  [(MapsDebugSliderTableRow *)v21 setMinimum:v22];
  *&v23 = a7;
  [(MapsDebugSliderTableRow *)v21 setMaximum:v23];
  [(MapsDebugSliderTableRow *)v21 setGet:v18];
  [(MapsDebugSliderTableRow *)v21 setSet:v19];

  [(MapsDebugSliderTableRow *)v21 setSubtitleFormatString:v16];
  [(MapsDebugSliderTableRow *)v21 setSubtitleHandler:v17];
  if (v18)
  {
    if (v17)
    {
      v18[2](v18);
      v24 = v17[2](v17);
      [(MapsDebugTableRow *)v21 setSubtitle:v24];
    }

    else if (v16)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100DC6A4C;
      v28[3] = &unk_101654940;
      v29 = v16;
      v25 = objc_retainBlock(v28);
      v18[2](v18);
      v26 = (v25[2])(v25);
      [(MapsDebugTableRow *)v21 setSubtitle:v26];

      [(MapsDebugSliderTableRow *)v21 setSubtitleHandler:v25];
    }
  }

  [(MapsDebugTableSection *)self addRow:v21];

  return v21;
}

- (id)addSwitchRowWithTitle:(id)a3 get:(id)a4 set:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(MapsDebugSwitchTableRow);
  [(MapsDebugTableRow *)v11 setTitle:v10];

  [(MapsDebugSwitchTableRow *)v11 setGet:v9];
  [(MapsDebugSwitchTableRow *)v11 setSet:v8];

  [(MapsDebugTableSection *)self addRow:v11];

  return v11;
}

- (id)addSwitchRowWithTitle:(id)a3 geoConfigKey:(id)a4 switchOnStateIfUnset:(BOOL)a5 changeHandler:(id)a6
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100DC6C88;
  v14[3] = &unk_1016548F0;
  v15 = a4;
  v16 = a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100DC6CDC;
  v11[3] = &unk_101654918;
  v13 = a4;
  v12 = a6;
  v8 = v12;
  v9 = [(MapsDebugTableSection *)self addSwitchRowWithTitle:a3 get:v14 set:v11];

  return v9;
}

- (id)addSwitchRowWithTitle:(id)a3 geoConfigKey:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100DC6E04;
  v8[3] = &unk_1016548B0;
  v9 = a4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100DC6E10;
  v6[3] = &unk_1016548D0;
  v7 = a4;
  v4 = [(MapsDebugTableSection *)self addSwitchRowWithTitle:a3 get:v8 set:v6];

  return v4;
}

- (id)addSwitchRowWithTitle:(id)a3 defaultsKey:(id)a4 userDefaults:(id)a5 switchOnStateIfUnset:(BOOL)a6 changeHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100DC6FA8;
  v24[3] = &unk_101654890;
  v25 = v13;
  v26 = v12;
  v27 = a6;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100DC7008;
  v20[3] = &unk_10165D3A0;
  v21 = v25;
  v22 = v26;
  v23 = v14;
  v15 = v14;
  v16 = v26;
  v17 = v25;
  v18 = [(MapsDebugTableSection *)self addSwitchRowWithTitle:a3 get:v24 set:v20];

  return v18;
}

- (id)addSwitchRowWithTitle:(id)a3 defaultsKey:(id)a4 switchOnStateIfUnset:(BOOL)a5 changeHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [(MapsDebugTableSection *)self addSwitchRowWithTitle:v12 defaultsKey:v11 userDefaults:v13 switchOnStateIfUnset:v6 changeHandler:v10];

  return v14;
}

- (id)addSwitchRowWithTitle:(id)a3 defaultsKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [(MapsDebugTableSection *)self addSwitchRowWithTitle:v7 userDefaults:v8 defaultsKey:v6];

  return v9;
}

- (id)addNavigationRowWithTitle:(id)a3 viewControllerContent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(MapsDebugNavigationTableRow);
  [(MapsDebugTableRow *)v8 setPrepareContentBlock:v6];

  [(MapsDebugTableRow *)v8 setTitle:v7];
  [(MapsDebugTableSection *)self addRow:v8];

  return v8;
}

- (id)addNavigationRowForViewControllerClass:(Class)a3
{
  if (a3)
  {
    v5 = objc_alloc_init(MapsDebugNavigationTableRow);
    [(MapsDebugNavigationTableRow *)v5 setViewControllerClass:a3];
    [(MapsDebugTableSection *)self addRow:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)addNavigationRowWithTitle:(id)a3 action:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(MapsDebugNavigationTableRow);
  [(MapsDebugTableRow *)v8 setTitle:v7];

  [(MapsDebugTableRow *)v8 setSelectionAction:v6];
  [(MapsDebugTableSection *)self addRow:v8];

  return v8;
}

- (id)addEmptySectionBannerRowWithTitle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MapsDebugEmptySectionBannerRow);
  [(MapsDebugTableRow *)v5 setTitle:v4];

  [(MapsDebugTableSection *)self addRow:v5];

  return v5;
}

- (id)addButtonRowWithTitle:(id)a3 action:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(MapsDebugActionTableRow);
  [(MapsDebugTableRow *)v8 setTitle:v7];

  [(MapsDebugActionTableRow *)v8 setSelectionAction:v6];
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

- (void)addRow:(id)a3
{
  v4 = a3;
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

  [v4 setSection:{self, v14}];
  [(NSMutableArray *)self->_mutableRows addObject:v4];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(MapsDebugTableSection *)self title];
  v5 = [(MapsDebugTableSection *)self rows];
  v6 = [NSString stringWithFormat:@"<%@: %p title:%@ rows:%@>", v3, self, v4, v5];

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