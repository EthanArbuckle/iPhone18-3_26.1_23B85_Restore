@interface LADecriptionBuilder
- (LADecriptionBuilder)initWithObject:(id)object;
- (id)build;
- (void)appendBool:(BOOL)bool withName:(id)name;
- (void)appendInteger:(int64_t)integer withName:(id)name;
- (void)appendObject:(id)object withName:(id)name;
- (void)appendString:(id)string withName:(id)name;
@end

@implementation LADecriptionBuilder

- (LADecriptionBuilder)initWithObject:(id)object
{
  objectCopy = object;
  v10.receiver = self;
  v10.super_class = LADecriptionBuilder;
  v5 = [(LADecriptionBuilder *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    components = v6->_components;
    v6->_components = v7;
  }

  return v6;
}

- (void)appendString:(id)string withName:(id)name
{
  if (string)
  {
    components = self->_components;
    nameCopy = name;
    [(NSMutableDictionary *)components setObject:string forKeyedSubscript:?];
  }

  else
  {
    v7 = MEMORY[0x1E695DFB0];
    nameCopy2 = name;
    nameCopy = [v7 null];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }
}

- (void)appendBool:(BOOL)bool withName:(id)name
{
  if (bool)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [(NSMutableDictionary *)self->_components setObject:v4 forKeyedSubscript:name];
}

- (void)appendInteger:(int64_t)integer withName:(id)name
{
  nameCopy = name;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:integer];
  if (v6)
  {
    [(NSMutableDictionary *)self->_components setObject:v6 forKeyedSubscript:nameCopy];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)self->_components setObject:null forKeyedSubscript:nameCopy];
  }
}

- (void)appendObject:(id)object withName:(id)name
{
  nameCopy = name;
  v6 = [object description];
  if (v6)
  {
    [(NSMutableDictionary *)self->_components setObject:v6 forKeyedSubscript:nameCopy];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)self->_components setObject:null forKeyedSubscript:nameCopy];
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