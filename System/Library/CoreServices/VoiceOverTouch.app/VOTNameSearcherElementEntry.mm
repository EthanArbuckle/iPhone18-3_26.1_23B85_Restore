@interface VOTNameSearcherElementEntry
- (BOOL)isEqual:(id)a3;
- (VOTNameSearcherElementEntry)initWithElement:(id)a3;
- (void)select;
@end

@implementation VOTNameSearcherElementEntry

- (VOTNameSearcherElementEntry)initWithElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VOTNameSearcherElementEntry;
  v5 = [(VOTNameSearcherElementEntry *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(VOTNameSearcherElementEntry *)v5 setElement:v4];
    v7 = [v4 itemChooserName];
    [(VOTNameSearcherElementEntry *)v6 setItemChooserName:v7];

    v8 = v6;
  }

  return v6;
}

- (void)select
{
  v3 = [VOTSharedWorkspace elementManager];
  v4 = [(VOTNameSearcherElementEntry *)self element];
  [v3 handleNotification:1020 withData:v4 forElement:0];

  v5 = [VOTSharedWorkspace elementManager];
  [v5 deactivateGesturedTextInputIfNeeded:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 element];
    v6 = [(VOTNameSearcherElementEntry *)self element];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end