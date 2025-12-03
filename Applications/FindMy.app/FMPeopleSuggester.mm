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
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:CNContactStoreDidChangeNotification object:0];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for FMPeopleSuggester();
  [(FMPeopleSuggester *)&v6 dealloc];
}

@end