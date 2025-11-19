@interface NWConcrete_nw_migration_helper
- (void)dealloc;
@end

@implementation NWConcrete_nw_migration_helper

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NWConcrete_nw_migration_helper;
  [(NWConcrete_nw_migration_helper *)&v2 dealloc];
}

@end