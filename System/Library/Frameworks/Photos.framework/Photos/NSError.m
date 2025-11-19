@interface NSError
@end

@implementation NSError

void __55__NSError_PHErrors_Private__ph_genericEntitlementError__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696A578];
  v4[0] = @"Process is not entitled to run this operation.";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:5101 userInfo:v0];
  v2 = ph_genericEntitlementError_s_error;
  ph_genericEntitlementError_s_error = v1;
}

@end