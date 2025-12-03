@interface _HKCFGNonTerminalNode
+ (id)nodeWithChildren:(id)children rule:(id)rule rangeOfString:(_NSRange)string;
- (id)evaluate;
@end

@implementation _HKCFGNonTerminalNode

- (id)evaluate
{
  value = self->_value;
  if (!value)
  {
    nodeEvaluator = [(_HKCFGReplacementRule *)self->_rule nodeEvaluator];
    v5 = (nodeEvaluator)[2](nodeEvaluator, self->_nodes);
    v6 = self->_value;
    self->_value = v5;

    value = self->_value;
  }

  return value;
}

+ (id)nodeWithChildren:(id)children rule:(id)rule rangeOfString:(_NSRange)string
{
  length = string.length;
  location = string.location;
  ruleCopy = rule;
  childrenCopy = children;
  v11 = [[self alloc] initWithRangeOfString:{location, length}];
  v12 = [childrenCopy copy];

  v13 = v11[3];
  v11[3] = v12;

  v14 = v11[5];
  v11[5] = ruleCopy;

  return v11;
}

@end