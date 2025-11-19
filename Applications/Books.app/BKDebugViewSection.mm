@interface BKDebugViewSection
- (BKDebugViewSection)initWithHeaderTitle:(id)a3 entries:(id)a4 footerTitle:(id)a5;
@end

@implementation BKDebugViewSection

- (BKDebugViewSection)initWithHeaderTitle:(id)a3 entries:(id)a4 footerTitle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = BKDebugViewSection;
  v11 = [(BKDebugViewSection *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    headerTitle = v11->_headerTitle;
    v11->_headerTitle = v12;

    objc_storeStrong(&v11->_entries, a4);
    v14 = [v10 copy];
    footerTitle = v11->_footerTitle;
    v11->_footerTitle = v14;
  }

  return v11;
}

@end