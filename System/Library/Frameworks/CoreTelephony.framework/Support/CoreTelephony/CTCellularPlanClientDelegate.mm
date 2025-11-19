@interface CTCellularPlanClientDelegate
- (BOOL)hasCellularPlanEntitlement;
@end

@implementation CTCellularPlanClientDelegate

- (BOOL)hasCellularPlanEntitlement
{
  v3 = [(CTCellularPlanClientDelegate *)self hasEntitlement:@"cellular-plan"];
  if (!v3)
  {
    if ([(CTCellularPlanServer *)self->fServer logger])
    {
      v4 = *[(CTCellularPlanServer *)self->fServer logger];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "[CTCellularPlanClientDelegate hasCellularPlanEntitlement]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I DEBUG: %s: Missing CellularPlan entitlement. Request dropped", &v6, 0xCu);
      }
    }
  }

  return v3;
}

@end