@interface MapsSuggestionsBaseFeeler
+ (BOOL)isEnabled;
- (BOOL)canProduceSignalType:(int64_t)a3;
- (MapsSuggestionsBaseFeeler)initWithDelegate:(id)a3;
- (MapsSuggestionsBaseFeeler)initWithDelegate:(id)a3 name:(id)a4;
- (MapsSuggestionsFeelerDelegate)delegate;
- (NSString)description;
- (int64_t)disposition;
- (void)setDelegate:(id)a3;
@end

@implementation MapsSuggestionsBaseFeeler

- (NSString)description
{
  v3 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = MapsSuggestionsBaseFeeler;
  v4 = [(MapsSuggestionsBaseFeeler *)&v8 description];
  v5 = [(MapsSuggestionsBaseFeeler *)self uniqueName];
  v6 = [v3 initWithFormat:@"%@ '%@'", v4, v5];

  return v6;
}

- (BOOL)canProduceSignalType:(int64_t)a3
{
  result = [(MapsSuggestionsBaseFeeler *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (int64_t)disposition
{
  result = [(MapsSuggestionsBaseFeeler *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (MapsSuggestionsFeelerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
}

- (MapsSuggestionsBaseFeeler)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() description];
  v6 = [(MapsSuggestionsBaseFeeler *)self initWithDelegate:v4 name:v5];

  return v6;
}

- (MapsSuggestionsBaseFeeler)initWithDelegate:(id)a3 name:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MapsSuggestionsBaseFeeler;
  v7 = [(MapsSuggestionsBaseFeeler *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;

    v10 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_delegate, v10);
  }

  objc_destroyWeak(&location);
  return v7;
}

+ (BOOL)isEnabled
{
  result = [a1 doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

@end