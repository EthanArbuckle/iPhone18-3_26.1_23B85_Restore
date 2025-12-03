@interface AKLoginRowData
- (AKLoginRowData)initWithIconImage:(id)image paneTitleText:(id)text titleText:(id)titleText detailText:(id)detailText authenticationType:(int64_t)type;
@end

@implementation AKLoginRowData

- (AKLoginRowData)initWithIconImage:(id)image paneTitleText:(id)text titleText:(id)titleText detailText:(id)detailText authenticationType:(int64_t)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v18 = 0;
  objc_storeStrong(&v18, text);
  v17 = 0;
  objc_storeStrong(&v17, titleText);
  v16 = 0;
  objc_storeStrong(&v16, detailText);
  typeCopy = type;
  v7 = selfCopy;
  selfCopy = 0;
  v14.receiver = v7;
  v14.super_class = AKLoginRowData;
  v13 = [(AKLoginRowData *)&v14 init];
  selfCopy = v13;
  objc_storeStrong(&selfCopy, v13);
  if (v13)
  {
    objc_storeStrong(selfCopy + 1, location[0]);
    objc_storeStrong(selfCopy + 2, v18);
    objc_storeStrong(selfCopy + 3, v17);
    objc_storeStrong(selfCopy + 4, v16);
    *(selfCopy + 5) = typeCopy;
    v21 = MEMORY[0x277D82BE0](selfCopy);
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v21;
}

@end