@interface NSManagedObject
@end

@implementation NSManagedObject

uint64_t __48__NSManagedObject_Accounts___obsoleteAttributes__block_invoke()
{
  __sACDObsoleteAttributes = [MEMORY[0x1E695DFD8] setWithObjects:{@"credentialAvailability", @"owningTeamID", 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end