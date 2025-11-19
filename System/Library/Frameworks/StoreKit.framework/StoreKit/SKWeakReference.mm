@interface SKWeakReference
- (BOOL)isEqual:(id)a3;
- (SKWeakReference)initWithObject:(id)a3;
- (id)object;
- (unint64_t)hash;
@end

@implementation SKWeakReference

- (unint64_t)hash
{
  v2 = [(SKWeakReference *)self object];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 object];
    v6 = [(SKWeakReference *)self object];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SKWeakReference)initWithObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKWeakReference;
  v5 = [(SKWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SKWeakReference *)v5 setObject:v4];
  }

  return v6;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end