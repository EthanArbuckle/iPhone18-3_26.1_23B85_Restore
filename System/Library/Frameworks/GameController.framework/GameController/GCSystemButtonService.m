@interface GCSystemButtonService
+ (id)sharedInstance;
- (GCSystemButtonService)init;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation GCSystemButtonService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[GCSystemButtonService sharedInstance];
  }

  v3 = sharedInstance_Shared_4;

  return v3;
}

void __39__GCSystemButtonService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(GCSystemButtonService);
  v1 = sharedInstance_Shared_4;
  sharedInstance_Shared_4 = v0;
}

- (GCSystemButtonService)init
{
  v6.receiver = self;
  v6.super_class = GCSystemButtonService;
  v2 = [(GCSystemButtonService *)&v6 init];
  v3 = objc_alloc_init(_GCSystemButtonServiceInternal);
  impl = v2->_impl;
  v2->_impl = v3;

  [(_GCSystemButtonServiceInternal *)v2->_impl addObserver:v2 forKeyPath:@"available" options:9 context:0];
  [(_GCSystemButtonServiceInternal *)v2->_impl addObserver:v2 forKeyPath:@"localizedName" options:9 context:0];
  [(_GCSystemButtonServiceInternal *)v2->_impl addObserver:v2 forKeyPath:@"sfSymbolName" options:9 context:0];
  [(_GCSystemButtonServiceInternal *)v2->_impl addObserver:v2 forKeyPath:@"respondingProcessBundleIdentifiers" options:9 context:0];
  return v2;
}

- (void)dealloc
{
  [(_GCSystemButtonServiceInternal *)self->_impl removeObserver:self forKeyPath:@"available" context:0];
  [(_GCSystemButtonServiceInternal *)self->_impl removeObserver:self forKeyPath:@"localizedName" context:0];
  [(_GCSystemButtonServiceInternal *)self->_impl removeObserver:self forKeyPath:@"sfSymbolName" context:0];
  [(_GCSystemButtonServiceInternal *)self->_impl removeObserver:self forKeyPath:@"respondingProcessBundleIdentifiers" context:0];
  [(_GCSystemButtonServiceInternal *)self->_impl _invalidate];
  v3.receiver = self;
  v3.super_class = GCSystemButtonService;
  [(GCSystemButtonService *)&v3 dealloc];
}

- (id)description
{
  if ([(GCSystemButtonService *)self isAvailable])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(GCSystemButtonService *)self localizedName];
    v5 = [(GCSystemButtonService *)self sfSymbolName];
    v6 = [v3 stringWithFormat:@"%@ (%@)", v4, v5];
  }

  else
  {
    v6 = @"Unavailable";
  }

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCSystemButtonService *)self description];
  v7 = [v3 stringWithFormat:@"%@ %p %@", v5, self, v6];;

  return v7;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (self->_impl == a4)
  {
    v11 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F8]];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      [(GCSystemButtonService *)self willChangeValueForKey:v10];
    }

    else
    {
      [(GCSystemButtonService *)self didChangeValueForKey:v10];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GCSystemButtonService;
    [(GCSystemButtonService *)&v13 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }
}

@end