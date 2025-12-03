@interface DASDisplayInfo
- (id)_initWithName:(id)name attachedContexts:(id)contexts raw:(id)raw;
- (id)description;
@end

@implementation DASDisplayInfo

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendString:self->_name withName:@"name"];
  array = [(NSOrderedSet *)self->_attachedContexts array];
  v5 = [array bs_map:&stru_1000103C0];
  v6 = [v5 componentsJoinedByString:{@", "}];
  [v3 appendString:v6 withName:@"attachedContexts"];

  build = [v3 build];

  return build;
}

- (id)_initWithName:(id)name attachedContexts:(id)contexts raw:(id)raw
{
  nameCopy = name;
  contextsCopy = contexts;
  rawCopy = raw;
  v19.receiver = self;
  v19.super_class = DASDisplayInfo;
  v11 = [(DASDisplayInfo *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [contextsCopy copy];
    attachedContexts = v11->_attachedContexts;
    v11->_attachedContexts = v14;

    v16 = [rawCopy copy];
    raw = v11->_raw;
    v11->_raw = v16;
  }

  return v11;
}

@end