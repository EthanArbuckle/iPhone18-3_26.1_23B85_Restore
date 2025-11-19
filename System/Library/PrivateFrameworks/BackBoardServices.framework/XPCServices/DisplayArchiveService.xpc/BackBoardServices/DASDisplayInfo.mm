@interface DASDisplayInfo
- (id)_initWithName:(id)a3 attachedContexts:(id)a4 raw:(id)a5;
- (id)description;
@end

@implementation DASDisplayInfo

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendString:self->_name withName:@"name"];
  v4 = [(NSOrderedSet *)self->_attachedContexts array];
  v5 = [v4 bs_map:&stru_1000103C0];
  v6 = [v5 componentsJoinedByString:{@", "}];
  [v3 appendString:v6 withName:@"attachedContexts"];

  v7 = [v3 build];

  return v7;
}

- (id)_initWithName:(id)a3 attachedContexts:(id)a4 raw:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = DASDisplayInfo;
  v11 = [(DASDisplayInfo *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v9 copy];
    attachedContexts = v11->_attachedContexts;
    v11->_attachedContexts = v14;

    v16 = [v10 copy];
    raw = v11->_raw;
    v11->_raw = v16;
  }

  return v11;
}

@end