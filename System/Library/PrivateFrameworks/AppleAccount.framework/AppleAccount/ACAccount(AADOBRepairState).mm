@interface ACAccount(AADOBRepairState)
- (uint64_t)aa_needsDOBRepair;
@end

@implementation ACAccount(AADOBRepairState)

- (uint64_t)aa_needsDOBRepair
{
  v1 = [a1 accountPropertyForKey:@"dobRepairState"];
  v2 = [v1 isEqualToNumber:&unk_1F2F24B08];

  return v2;
}

@end