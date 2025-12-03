@interface TUILinkEntityAction
- (TUILinkEntityAction)initWithName:(id)name trigger:(id)trigger refId:(id)id;
- (id)description;
@end

@implementation TUILinkEntityAction

- (TUILinkEntityAction)initWithName:(id)name trigger:(id)trigger refId:(id)id
{
  nameCopy = name;
  triggerCopy = trigger;
  idCopy = id;
  v19.receiver = self;
  v19.super_class = TUILinkEntityAction;
  v11 = [(TUILinkEntityAction *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [triggerCopy copy];
    trigger = v11->_trigger;
    v11->_trigger = v14;

    v16 = [idCopy copy];
    refId = v11->_refId;
    v11->_refId = v16;
  }

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ name=%@ trigger=%@ refId=%@>", v4, self->_name, self->_trigger, self->_refId];

  return v5;
}

@end