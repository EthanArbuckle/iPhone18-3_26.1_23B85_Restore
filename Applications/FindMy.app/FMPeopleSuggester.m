@interface FMPeopleSuggester
- (NSString)description;
- (void)dealloc;
@end

@implementation FMPeopleSuggester

- (NSString)description
{
  String.init(format:_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:CNContactStoreDidChangeNotification object:0];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for FMPeopleSuggester();
  [(FMPeopleSuggester *)&v6 dealloc];
}

@end