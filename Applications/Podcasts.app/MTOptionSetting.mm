@interface MTOptionSetting
- (id)currentShortTitle;
- (id)menuForOptions;
@end

@implementation MTOptionSetting

- (id)currentShortTitle
{
  options = self->_options;
  value = [(MTSetting *)self value];
  v5 = -[MTOptionsDescription indexForValue:](options, "indexForValue:", [value unsignedIntegerValue]);

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  shortTitles = [(MTOptionsDescription *)self->_options shortTitles];
  v7 = [shortTitles objectAtIndex:v5];

  return v7;
}

- (id)menuForOptions
{
  v20 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  options = [(MTOptionSetting *)self options];
  obj = [options valueSet];

  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        options2 = [(MTOptionSetting *)self options];
        v9 = [options2 indexForValue:{objc_msgSend(v7, "integerValue")}];

        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          options3 = [(MTOptionSetting *)self options];
          valueSet = [options3 valueSet];
          v12 = v9 < [valueSet count];

          if (v12)
          {
            options4 = [(MTOptionSetting *)self options];
            longTitles = [options4 longTitles];
            v15 = [longTitles objectAtIndexedSubscript:v9];

            objc_initWeak(&location, self);
            v22[0] = _NSConcreteStackBlock;
            v22[1] = 3221225472;
            v22[2] = sub_1001230C4;
            v22[3] = &unk_1004DD200;
            objc_copyWeak(&v23, &location);
            v22[4] = v7;
            v16 = [UIAction actionWithTitle:v15 image:0 identifier:0 handler:v22];
            value = [(MTSetting *)self value];
            [v16 setState:{objc_msgSend(v7, "isEqualToNumber:", value)}];

            [v20 addObject:v16];
            objc_destroyWeak(&v23);
            objc_destroyWeak(&location);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  v18 = [UIMenu menuWithTitle:&stru_1004F3018 children:v20];

  return v18;
}

@end