@interface _MLCCPUScatter
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
@end

@implementation _MLCCPUScatter

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v6 = [a4 objectAtIndexedSubscript:0];
  objc_opt_class();
  v7 = objc_opt_new();
  [v6 setLayer:v7];

  return 1;
}

@end