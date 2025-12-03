@interface BKDebugViewSection
- (BKDebugViewSection)initWithHeaderTitle:(id)title entries:(id)entries footerTitle:(id)footerTitle;
@end

@implementation BKDebugViewSection

- (BKDebugViewSection)initWithHeaderTitle:(id)title entries:(id)entries footerTitle:(id)footerTitle
{
  titleCopy = title;
  entriesCopy = entries;
  footerTitleCopy = footerTitle;
  v17.receiver = self;
  v17.super_class = BKDebugViewSection;
  v11 = [(BKDebugViewSection *)&v17 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    headerTitle = v11->_headerTitle;
    v11->_headerTitle = v12;

    objc_storeStrong(&v11->_entries, entries);
    v14 = [footerTitleCopy copy];
    footerTitle = v11->_footerTitle;
    v11->_footerTitle = v14;
  }

  return v11;
}

@end