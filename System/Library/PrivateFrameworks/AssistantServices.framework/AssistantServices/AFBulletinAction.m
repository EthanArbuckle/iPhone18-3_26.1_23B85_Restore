@interface AFBulletinAction
- (AFBulletinAction)initWithBulletinAction:(id)a3;
- (id)getTitleVariants;
- (void)addTitleVariant:(id)a3;
@end

@implementation AFBulletinAction

- (id)getTitleVariants
{
  v2 = [(NSMutableSet *)self->_titleVariants copy];

  return v2;
}

- (void)addTitleVariant:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_titleVariants addObject:?];
  }
}

- (AFBulletinAction)initWithBulletinAction:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = AFBulletinAction;
  v6 = [(AFBulletinAction *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    titleVariants = v6->_titleVariants;
    v6->_titleVariants = v7;

    objc_storeStrong(&v6->_bbAction, a3);
    v9 = [(BBAction *)v6->_bbAction identifier];
    bbActionID = v6->_bbActionID;
    v6->_bbActionID = v9;

    v11 = [(BBAction *)v6->_bbAction appearance];
    v12 = [v11 title];
    [(AFBulletinAction *)v6 addTitleVariant:v12];
  }

  return v6;
}

@end