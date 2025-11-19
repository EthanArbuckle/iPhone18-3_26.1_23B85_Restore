@interface TUIContainerBox
- (void)appendLayoutChildrenToArray:(id)a3;
- (void)updateModelChildren:(id)a3;
@end

@implementation TUIContainerBox

- (void)updateModelChildren:(id)a3
{
  v4 = a3;
  [(NSArray *)self->_children enumerateObjectsUsingBlock:&stru_263A90];
  v5 = [v4 copy];
  children = self->_children;
  self->_children = v5;

  v7 = self->_children;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_189D50;
  v8[3] = &unk_2615C0;
  v8[4] = self;
  [(NSArray *)v7 enumerateObjectsUsingBlock:v8];
  [(TUIContainerBox *)self onContainedModelsChanged];
}

- (void)appendLayoutChildrenToArray:(id)a3
{
  v4 = a3;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_189E2C;
  v7[3] = &unk_2615C0;
  v8 = v4;
  v6 = v4;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

@end