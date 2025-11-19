@interface _TUIGuideNode
- (_TUIGuideNode)init;
- (id)description;
@end

@implementation _TUIGuideNode

- (_TUIGuideNode)init
{
  v8.receiver = self;
  v8.super_class = _TUIGuideNode;
  v2 = [(_TUIGuideNode *)&v8 init];
  if (v2)
  {
    v3 = [NSHashTable hashTableWithOptions:517];
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = objc_opt_new();
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    *(v2 + 24) = xmmword_24CAF0;
  }

  return v2;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = TUILengthDescription(*&self->_accumulatedLength.value, *&self->_accumulatedLength.max);
  v6 = [NSString stringWithFormat:@"<%@ %p accLength=%@>", v4, self, v5];

  return v6;
}

@end