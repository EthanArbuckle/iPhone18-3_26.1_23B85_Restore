@interface APSTopicHasher
- (APSTopicHasher)initWithTopicSaltStore:(id)store;
- (id)_identifierForTopic:(id)topic user:(id)user;
- (id)createTopicHashForTopic:(id)topic user:(id)user shouldSalt:(BOOL)salt;
- (id)topicHashForTopic:(id)topic user:(id)user;
- (id)topicsToSaltsWithUser:(id)user;
- (void)clearSaltForTopic:(id)topic user:(id)user;
@end

@implementation APSTopicHasher

- (APSTopicHasher)initWithTopicSaltStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = APSTopicHasher;
  v6 = [(APSTopicHasher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_topicSaltStore, store);
  }

  return v7;
}

- (void)clearSaltForTopic:(id)topic user:(id)user
{
  userCopy = user;
  v8 = [(APSTopicHasher *)self _identifierForTopic:topic user:userCopy];
  topicSaltStore = [(APSTopicHasher *)self topicSaltStore];
  [topicSaltStore saveSalt:0 forIdentifier:v8 user:userCopy];
}

- (id)createTopicHashForTopic:(id)topic user:(id)user shouldSalt:(BOOL)salt
{
  saltCopy = salt;
  topicCopy = topic;
  userCopy = user;
  if (saltCopy)
  {
    v10 = [(APSTopicHasher *)self _identifierForTopic:topicCopy user:userCopy];
    topicSaltStore = [(APSTopicHasher *)self topicSaltStore];
    v12 = [topicSaltStore loadSaltForIdentifier:v10 user:userCopy];

    if (v12)
    {
      v20 = v12;
      v13 = sub_100088454(topicCopy, &v20);
      v14 = v20;
    }

    else
    {
      v19 = 0;
      v12 = sub_100088454(topicCopy, &v19);
      v14 = v19;
      v15 = 0;
      if (v14 && v12)
      {
        topicSaltStore2 = [(APSTopicHasher *)self topicSaltStore];
        v17 = [topicSaltStore2 saveSalt:v14 forIdentifier:v10 user:userCopy];

        if (v17)
        {
          v15 = v12;
        }

        else
        {
          v15 = 0;
        }
      }

      v13 = v15;
    }
  }

  else
  {
    v13 = sub_1000056C0(topicCopy);
  }

  return v13;
}

- (id)topicHashForTopic:(id)topic user:(id)user
{
  userCopy = user;
  topicCopy = topic;
  v8 = [(APSTopicHasher *)self _identifierForTopic:topicCopy user:userCopy];
  topicSaltStore = [(APSTopicHasher *)self topicSaltStore];
  v10 = [topicSaltStore loadSaltForIdentifier:v8 user:userCopy];

  if (v10)
  {
    v13 = v10;
    v11 = sub_100088454(topicCopy, &v13);

    topicCopy = v13;
  }

  else
  {
    v11 = sub_1000056C0(topicCopy);
  }

  return v11;
}

- (id)topicsToSaltsWithUser:(id)user
{
  userCopy = user;
  topicSaltStore = [(APSTopicHasher *)self topicSaltStore];
  v6 = [topicSaltStore loadIdentifiersToSaltsForUser:userCopy];

  return v6;
}

- (id)_identifierForTopic:(id)topic user:(id)user
{
  topicCopy = topic;
  userCopy = user;
  storageName = [userCopy storageName];
  v8 = [storageName length];

  if (v8)
  {
    storageName2 = [userCopy storageName];
    v10 = [NSString stringWithFormat:@"%@, %@", topicCopy, storageName2];
  }

  else
  {
    v10 = topicCopy;
  }

  return v10;
}

@end