@interface PKStrokeSelectionCoherence
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
@end

@implementation PKStrokeSelectionCoherence

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x1E69784F8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 objectWithItemProviderData:v9 typeIdentifier:v8 drawingClass:objc_opt_class() error:a5];

  return v10;
}

@end