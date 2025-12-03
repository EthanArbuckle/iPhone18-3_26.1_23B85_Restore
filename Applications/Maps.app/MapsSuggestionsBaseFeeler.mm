@interface MapsSuggestionsBaseFeeler
+ (BOOL)isEnabled;
- (BOOL)canProduceSignalType:(int64_t)type;
- (MapsSuggestionsBaseFeeler)initWithDelegate:(id)delegate;
- (MapsSuggestionsBaseFeeler)initWithDelegate:(id)delegate name:(id)name;
- (MapsSuggestionsFeelerDelegate)delegate;
- (NSString)description;
- (int64_t)disposition;
- (void)setDelegate:(id)delegate;
@end

@implementation MapsSuggestionsBaseFeeler

- (NSString)description
{
  v3 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = MapsSuggestionsBaseFeeler;
  v4 = [(MapsSuggestionsBaseFeeler *)&v8 description];
  uniqueName = [(MapsSuggestionsBaseFeeler *)self uniqueName];
  v6 = [v3 initWithFormat:@"%@ '%@'", v4, uniqueName];

  return v6;
}

- (BOOL)canProduceSignalType:(int64_t)type
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (MapsSuggestionsBaseFeeler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [objc_opt_class() description];
  v6 = [(MapsSuggestionsBaseFeeler *)self initWithDelegate:delegateCopy name:v5];

  return v6;
}

- (MapsSuggestionsBaseFeeler)initWithDelegate:(id)delegate name:(id)name
{
  objc_initWeak(&location, delegate);
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = MapsSuggestionsBaseFeeler;
  v7 = [(MapsSuggestionsBaseFeeler *)&v12 init];
  if (v7)
  {
    v8 = [nameCopy copy];
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
  result = [self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

@end