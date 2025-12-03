@interface TUIContainerBox
- (void)appendLayoutChildrenToArray:(id)array;
- (void)updateModelChildren:(id)children;
@end

@implementation TUIContainerBox

- (void)updateModelChildren:(id)children
{
  childrenCopy = children;
  [(NSArray *)self->_children enumerateObjectsUsingBlock:&stru_263A90];
  v5 = [childrenCopy copy];
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

- (void)appendLayoutChildrenToArray:(id)array
{
  arrayCopy = array;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_189E2C;
  v7[3] = &unk_2615C0;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

@end