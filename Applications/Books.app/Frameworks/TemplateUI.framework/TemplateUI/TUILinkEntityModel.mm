@interface TUILinkEntityModel
- (NSSet)actions;
- (NSString)description;
- (TUILinkEntityModel)initWithType:(id)type identifier:(id)identifier title:(id)title actionsMap:(id)map;
@end

@implementation TUILinkEntityModel

- (TUILinkEntityModel)initWithType:(id)type identifier:(id)identifier title:(id)title actionsMap:(id)map
{
  typeCopy = type;
  identifierCopy = identifier;
  titleCopy = title;
  mapCopy = map;
  v24.receiver = self;
  v24.super_class = TUILinkEntityModel;
  v14 = [(TUILinkEntityModel *)&v24 init];
  if (v14)
  {
    v15 = [typeCopy copy];
    type = v14->_type;
    v14->_type = v15;

    v17 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    v19 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v19;

    v21 = [mapCopy copy];
    actionsMap = v14->_actionsMap;
    v14->_actionsMap = v21;
  }

  return v14;
}

- (NSSet)actions
{
  allKeys = [(NSDictionary *)self->_actionsMap allKeys];
  v3 = [NSSet setWithArray:allKeys];

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v11 = *&self->_type;
  title = self->_title;
  allKeys = [(NSDictionary *)self->_actionsMap allKeys];
  v7 = [allKeys sortedArrayUsingSelector:"compare:"];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [NSString stringWithFormat:@"<%@ type=%@ identifier='%@' title='%@' actions=%@>", v4, v11, title, v8];

  return v9;
}

@end