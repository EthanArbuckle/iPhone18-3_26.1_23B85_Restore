@interface FetchRequestTask
- (FetchRequestTask)initWithIdentifier:(id)identifier;
- (id)perform;
@end

@implementation FetchRequestTask

- (FetchRequestTask)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = FetchRequestTask;
  v5 = [(FetchRequestTask *)&v9 init];
  if (v5)
  {
    if ([identifierCopy containsString:@"_"])
    {
      v6 = [identifierCopy componentsSeparatedByString:@"_"];
      if ([v6 count] >= 2)
      {
        lastObject = [v6 lastObject];

        identifierCopy = lastObject;
      }
    }

    objc_storeStrong(&v5->_identifier, identifierCopy);
  }

  return v5;
}

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014884;
  v4[3] = &unk_100054C08;
  v4[4] = self;
  v2 = [(FetchRequestTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

@end