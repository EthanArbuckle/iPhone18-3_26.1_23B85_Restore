@interface WKInterfaceObjectClassWithType
@end

@implementation WKInterfaceObjectClassWithType

void ___WKInterfaceObjectClassWithType_block_invoke()
{
  v4[12] = *MEMORY[0x277D85DE8];
  v3[0] = @"button";
  v4[0] = objc_opt_class();
  v3[1] = @"switch";
  v4[1] = objc_opt_class();
  v3[2] = @"image";
  v4[2] = objc_opt_class();
  v3[3] = @"label";
  v4[3] = objc_opt_class();
  v3[4] = @"timer";
  v4[4] = objc_opt_class();
  v3[5] = @"date";
  v4[5] = objc_opt_class();
  v3[6] = @"list";
  v4[6] = objc_opt_class();
  v3[7] = @"table";
  v4[7] = objc_opt_class();
  v3[8] = @"group";
  v4[8] = objc_opt_class();
  v3[9] = @"map";
  v4[9] = objc_opt_class();
  v3[10] = @"slider";
  v4[10] = objc_opt_class();
  v3[11] = @"separator";
  v4[11] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:12];
  v1 = _WKInterfaceObjectClassWithType___interfaceClasses;
  _WKInterfaceObjectClassWithType___interfaceClasses = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end