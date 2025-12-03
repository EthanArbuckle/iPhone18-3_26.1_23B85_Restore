@interface WKSPInterfaceObject
- (id)_initWithInterfaceProperty:(id)property viewControllerID:(id)d propertyIndex:(int64_t)index tableIndex:(int64_t)tableIndex rowIndex:(int64_t)rowIndex;
- (void)_sendValueChanged:(id)changed forProperty:(id)property;
@end

@implementation WKSPInterfaceObject

- (id)_initWithInterfaceProperty:(id)property viewControllerID:(id)d propertyIndex:(int64_t)index tableIndex:(int64_t)tableIndex rowIndex:(int64_t)rowIndex
{
  indexCopy = index;
  v16.receiver = self;
  v16.super_class = WKSPInterfaceObject;
  dCopy = d;
  propertyCopy = property;
  v13 = [(WKSPInterfaceObject *)&v16 init];
  [(WKSPInterfaceObject *)v13 setInterfaceProperty:propertyCopy];

  [(WKSPInterfaceObject *)v13 setViewControllerID:dCopy];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", (indexCopy + 1)];
  [(WKSPInterfaceObject *)v13 setPropertyIndex:v14];

  [(WKSPInterfaceObject *)v13 setTableIndex:tableIndex];
  [(WKSPInterfaceObject *)v13 setRowIndex:rowIndex];
  return v13;
}

- (void)_sendValueChanged:(id)changed forProperty:(id)property
{
  propertyCopy = property;
  changedCopy = changed;
  propertyIndex = [(WKSPInterfaceObject *)self propertyIndex];
  if ([(WKSPInterfaceObject *)self tableIndex]>= 1 && [(WKSPInterfaceObject *)self tableIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WKSPInterfaceObject tableIndex](self, "tableIndex")}];
    stringValue = [v8 stringValue];
    v10 = [propertyIndex stringByAppendingPathComponent:stringValue];

    propertyIndex = v10;
  }

  if ([(WKSPInterfaceObject *)self rowIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WKSPInterfaceObject rowIndex](self, "rowIndex")}];
    stringValue2 = [v11 stringValue];
    v13 = [propertyIndex stringByAppendingPathComponent:stringValue2];

    propertyIndex = v13;
  }

  viewControllerID = [(WKSPInterfaceObject *)self viewControllerID];
  [SPRemoteInterface setController:viewControllerID key:propertyIndex property:propertyCopy value:changedCopy];
}

@end