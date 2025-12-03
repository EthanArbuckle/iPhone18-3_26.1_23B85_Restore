@interface TUIGuideSpec
+ (id)columnWithIndex:(int64_t)index edge:(unint64_t)edge;
+ (id)contentWithEdge:(unint64_t)edge;
+ (id)gridWithEdge:(unint64_t)edge;
+ (id)named:(int64_t)named;
+ (id)unbound;
- (BOOL)isEqual:(id)equal;
- (TUIGuideSpec)initWithOther:(id)other;
- (id)_initWithKind:(unint64_t)kind index:(int64_t)index edge:(unint64_t)edge;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TUIGuideSpec

- (id)_initWithKind:(unint64_t)kind index:(int64_t)index edge:(unint64_t)edge
{
  v9.receiver = self;
  v9.super_class = TUIGuideSpec;
  result = [(TUIGuideSpec *)&v9 init];
  if (result)
  {
    *(result + 1) = kind;
    *(result + 2) = index;
    *(result + 3) = edge;
  }

  return result;
}

- (TUIGuideSpec)initWithOther:(id)other
{
  otherCopy = other;
  v7.receiver = self;
  v7.super_class = TUIGuideSpec;
  v5 = [(TUIGuideSpec *)&v7 init];
  if (v5)
  {
    v5->_kind = [otherCopy kind];
    v5->_index = [otherCopy index];
    v5->_edge = [otherCopy edge];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithOther:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v8 = (objc_opt_isKindOfClass() & 1) != 0 && (kind = self->_kind, kind == [equalCopy kind]) && (edge = self->_edge, edge == objc_msgSend(equalCopy, "edge")) && (index = self->_index, index == objc_msgSend(equalCopy, "index")) && self->_kind != 1;

  return v8;
}

+ (id)gridWithEdge:(unint64_t)edge
{
  v3 = [[self alloc] _initWithKind:2 index:0x7FFFFFFFFFFFFFFFLL edge:edge];

  return v3;
}

+ (id)contentWithEdge:(unint64_t)edge
{
  v3 = [[self alloc] _initWithKind:3 index:0x7FFFFFFFFFFFFFFFLL edge:edge];

  return v3;
}

+ (id)columnWithIndex:(int64_t)index edge:(unint64_t)edge
{
  v4 = [[self alloc] _initWithKind:4 index:index edge:edge];

  return v4;
}

+ (id)unbound
{
  v2 = [[self alloc] _initWithKind:1 index:0x7FFFFFFFFFFFFFFFLL edge:0];

  return v2;
}

+ (id)named:(int64_t)named
{
  v3 = [[self alloc] _initWithKind:5 index:named edge:0];

  return v3;
}

- (id)description
{
  edge = self->_edge;
  if (edge > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_2614D8 + edge);
  }

  v5 = 0;
  kind = self->_kind;
  if (kind > 2)
  {
    switch(kind)
    {
      case 3:
        v11 = objc_opt_class();
        v8 = NSStringFromClass(v11);
        [NSString stringWithFormat:@"<%@ content %@>", v8, v4, v16];
        break;
      case 4:
        v13 = objc_opt_class();
        v8 = NSStringFromClass(v13);
        [NSString stringWithFormat:@"<%@ column=%ld %@>", v8, self->_index, v4];
        break;
      case 5:
        v9 = objc_opt_class();
        v8 = NSStringFromClass(v9);
        [NSString stringWithFormat:@"<%@ named %ld>", v8, self->_index, v16];
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (kind)
  {
    if (kind == 1)
    {
      v12 = objc_opt_class();
      v8 = NSStringFromClass(v12);
      [NSString stringWithFormat:@"<%@ unbound>", v8, v15, v16];
    }

    else
    {
      if (kind != 2)
      {
        goto LABEL_18;
      }

      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [NSString stringWithFormat:@"<%@ grid %@>", v8, v4, v16];
    }
  }

  else
  {
    v10 = objc_opt_class();
    v8 = NSStringFromClass(v10);
    [NSString stringWithFormat:@"<%@ unknown>", v8, v15, v16];
  }
  v5 = ;

LABEL_18:

  return v5;
}

@end