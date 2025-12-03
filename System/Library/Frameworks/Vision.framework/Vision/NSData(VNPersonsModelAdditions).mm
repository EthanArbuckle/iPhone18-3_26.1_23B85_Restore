@interface NSData(VNPersonsModelAdditions)
- (id)VNPersonsModelSubdataWithRange:()VNPersonsModelAdditions rangeDescription:error:;
- (void)VNPersonsModelSubdataWithRange:()VNPersonsModelAdditions rangeDescriptionProvidingBlock:error:;
@end

@implementation NSData(VNPersonsModelAdditions)

- (id)VNPersonsModelSubdataWithRange:()VNPersonsModelAdditions rangeDescription:error:
{
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__NSData_VNPersonsModelAdditions__VNPersonsModelSubdataWithRange_rangeDescription_error___block_invoke;
  v14[3] = &unk_1E77B6810;
  v15 = v10;
  v11 = v10;
  v12 = [self VNPersonsModelSubdataWithRange:a3 rangeDescriptionProvidingBlock:a4 error:{v14, a6}];

  return v12;
}

- (void)VNPersonsModelSubdataWithRange:()VNPersonsModelAdditions rangeDescriptionProvidingBlock:error:
{
  v10 = a5;
  v11 = [self length];
  if (a3 >= v11 || a4 > v11 || a3 + a4 > v11)
  {
    if (a6)
    {
      v12 = v10[2](v10);
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ is corrupt", v12];
      *a6 = VNPersonsModelErrorForInvalidModelData(v13);

      a6 = 0;
    }
  }

  else
  {
    a6 = [self subdataWithRange:{a3, a4}];
  }

  return a6;
}

@end