@interface LADecriptionBuilder
- (LADecriptionBuilder)initWithObject:(id)a3;
- (id)build;
- (void)appendBool:(BOOL)a3 withName:(id)a4;
- (void)appendInteger:(int64_t)a3 withName:(id)a4;
- (void)appendObject:(id)a3 withName:(id)a4;
- (void)appendString:(id)a3 withName:(id)a4;
@end

@implementation LADecriptionBuilder

- (LADecriptionBuilder)initWithObject:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LADecriptionBuilder;
  v5 = [(LADecriptionBuilder *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, v4);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    components = v6->_components;
    v6->_components = v7;
  }

  return v6;
}

- (void)appendString:(id)a3 withName:(id)a4
{
  if (a3)
  {
    components = self->_components;
    v9 = a4;
    [(NSMutableDictionary *)components setObject:a3 forKeyedSubscript:?];
  }

  else
  {
    v7 = MEMORY[0x1E695DFB0];
    v8 = a4;
    v9 = [v7 null];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }
}

- (void)appendBool:(BOOL)a3 withName:(id)a4
{
  if (a3)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [(NSMutableDictionary *)self->_components setObject:v4 forKeyedSubscript:a4];
}

- (void)appendInteger:(int64_t)a3 withName:(id)a4
{
  v8 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  if (v6)
  {
    [(NSMutableDictionary *)self->_components setObject:v6 forKeyedSubscript:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)self->_components setObject:v7 forKeyedSubscript:v8];
  }
}

- (void)appendObject:(id)a3 withName:(id)a4
{
  v8 = a4;
  v6 = [a3 description];
  if (v6)
  {
    [(NSMutableDictionary *)self->_components setObject:v6 forKeyedSubscript:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)self->_components setObject:v7 forKeyedSubscript:v8];
  }
}

- (id)build
{
  v3 = MEMORY[0x1E696AEC0];
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_loadWeakRetained(&self->_object);
  v8 = [v3 stringWithFormat:@"<%@: %p> ", v6, v7];
  v9 = [(NSMutableDictionary *)self->_components description];
  v10 = [v8 stringByAppendingString:v9];

  return v10;
}

@end