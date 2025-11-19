@interface _HKCFGNonTerminalNode
+ (id)nodeWithChildren:(id)a3 rule:(id)a4 rangeOfString:(_NSRange)a5;
- (id)evaluate;
@end

@implementation _HKCFGNonTerminalNode

- (id)evaluate
{
  value = self->_value;
  if (!value)
  {
    v4 = [(_HKCFGReplacementRule *)self->_rule nodeEvaluator];
    v5 = (v4)[2](v4, self->_nodes);
    v6 = self->_value;
    self->_value = v5;

    value = self->_value;
  }

  return value;
}

+ (id)nodeWithChildren:(id)a3 rule:(id)a4 rangeOfString:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithRangeOfString:{location, length}];
  v12 = [v10 copy];

  v13 = v11[3];
  v11[3] = v12;

  v14 = v11[5];
  v11[5] = v9;

  return v11;
}

@end