@interface VOTNameSearcherElementEntry
- (BOOL)isEqual:(id)equal;
- (VOTNameSearcherElementEntry)initWithElement:(id)element;
- (void)select;
@end

@implementation VOTNameSearcherElementEntry

- (VOTNameSearcherElementEntry)initWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = VOTNameSearcherElementEntry;
  v5 = [(VOTNameSearcherElementEntry *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(VOTNameSearcherElementEntry *)v5 setElement:elementCopy];
    itemChooserName = [elementCopy itemChooserName];
    [(VOTNameSearcherElementEntry *)v6 setItemChooserName:itemChooserName];

    v8 = v6;
  }

  return v6;
}

- (void)select
{
  elementManager = [VOTSharedWorkspace elementManager];
  element = [(VOTNameSearcherElementEntry *)self element];
  [elementManager handleNotification:1020 withData:element forElement:0];

  elementManager2 = [VOTSharedWorkspace elementManager];
  [elementManager2 deactivateGesturedTextInputIfNeeded:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    element = [equalCopy element];
    element2 = [(VOTNameSearcherElementEntry *)self element];
    v7 = [element isEqual:element2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end