@interface WKSPInterfaceObject
- (id)_initWithInterfaceProperty:(id)a3 viewControllerID:(id)a4 propertyIndex:(int64_t)a5 tableIndex:(int64_t)a6 rowIndex:(int64_t)a7;
- (void)_sendValueChanged:(id)a3 forProperty:(id)a4;
@end

@implementation WKSPInterfaceObject

- (id)_initWithInterfaceProperty:(id)a3 viewControllerID:(id)a4 propertyIndex:(int64_t)a5 tableIndex:(int64_t)a6 rowIndex:(int64_t)a7
{
  v9 = a5;
  v16.receiver = self;
  v16.super_class = WKSPInterfaceObject;
  v11 = a4;
  v12 = a3;
  v13 = [(WKSPInterfaceObject *)&v16 init];
  [(WKSPInterfaceObject *)v13 setInterfaceProperty:v12];

  [(WKSPInterfaceObject *)v13 setViewControllerID:v11];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", (v9 + 1)];
  [(WKSPInterfaceObject *)v13 setPropertyIndex:v14];

  [(WKSPInterfaceObject *)v13 setTableIndex:a6];
  [(WKSPInterfaceObject *)v13 setRowIndex:a7];
  return v13;
}

- (void)_sendValueChanged:(id)a3 forProperty:(id)a4
{
  v6 = a4;
  v7 = a3;
  v15 = [(WKSPInterfaceObject *)self propertyIndex];
  if ([(WKSPInterfaceObject *)self tableIndex]>= 1 && [(WKSPInterfaceObject *)self tableIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WKSPInterfaceObject tableIndex](self, "tableIndex")}];
    v9 = [v8 stringValue];
    v10 = [v15 stringByAppendingPathComponent:v9];

    v15 = v10;
  }

  if ([(WKSPInterfaceObject *)self rowIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WKSPInterfaceObject rowIndex](self, "rowIndex")}];
    v12 = [v11 stringValue];
    v13 = [v15 stringByAppendingPathComponent:v12];

    v15 = v13;
  }

  v14 = [(WKSPInterfaceObject *)self viewControllerID];
  [SPRemoteInterface setController:v14 key:v15 property:v6 value:v7];
}

@end