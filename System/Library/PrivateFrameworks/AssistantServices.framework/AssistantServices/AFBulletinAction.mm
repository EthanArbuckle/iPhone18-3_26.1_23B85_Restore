@interface AFBulletinAction
- (AFBulletinAction)initWithBulletinAction:(id)action;
- (id)getTitleVariants;
- (void)addTitleVariant:(id)variant;
@end

@implementation AFBulletinAction

- (id)getTitleVariants
{
  v2 = [(NSMutableSet *)self->_titleVariants copy];

  return v2;
}

- (void)addTitleVariant:(id)variant
{
  if (variant)
  {
    [(NSMutableSet *)self->_titleVariants addObject:?];
  }
}

- (AFBulletinAction)initWithBulletinAction:(id)action
{
  actionCopy = action;
  v14.receiver = self;
  v14.super_class = AFBulletinAction;
  v6 = [(AFBulletinAction *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    titleVariants = v6->_titleVariants;
    v6->_titleVariants = v7;

    objc_storeStrong(&v6->_bbAction, action);
    identifier = [(BBAction *)v6->_bbAction identifier];
    bbActionID = v6->_bbActionID;
    v6->_bbActionID = identifier;

    appearance = [(BBAction *)v6->_bbAction appearance];
    title = [appearance title];
    [(AFBulletinAction *)v6 addTitleVariant:title];
  }

  return v6;
}

@end