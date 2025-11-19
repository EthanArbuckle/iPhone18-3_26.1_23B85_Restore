@interface APSTopicHasher
- (APSTopicHasher)initWithTopicSaltStore:(id)a3;
- (id)_identifierForTopic:(id)a3 user:(id)a4;
- (id)createTopicHashForTopic:(id)a3 user:(id)a4 shouldSalt:(BOOL)a5;
- (id)topicHashForTopic:(id)a3 user:(id)a4;
- (id)topicsToSaltsWithUser:(id)a3;
- (void)clearSaltForTopic:(id)a3 user:(id)a4;
@end

@implementation APSTopicHasher

- (APSTopicHasher)initWithTopicSaltStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APSTopicHasher;
  v6 = [(APSTopicHasher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_topicSaltStore, a3);
  }

  return v7;
}

- (void)clearSaltForTopic:(id)a3 user:(id)a4
{
  v6 = a4;
  v8 = [(APSTopicHasher *)self _identifierForTopic:a3 user:v6];
  v7 = [(APSTopicHasher *)self topicSaltStore];
  [v7 saveSalt:0 forIdentifier:v8 user:v6];
}

- (id)createTopicHashForTopic:(id)a3 user:(id)a4 shouldSalt:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v10 = [(APSTopicHasher *)self _identifierForTopic:v8 user:v9];
    v11 = [(APSTopicHasher *)self topicSaltStore];
    v12 = [v11 loadSaltForIdentifier:v10 user:v9];

    if (v12)
    {
      v20 = v12;
      v13 = sub_100088454(v8, &v20);
      v14 = v20;
    }

    else
    {
      v19 = 0;
      v12 = sub_100088454(v8, &v19);
      v14 = v19;
      v15 = 0;
      if (v14 && v12)
      {
        v16 = [(APSTopicHasher *)self topicSaltStore];
        v17 = [v16 saveSalt:v14 forIdentifier:v10 user:v9];

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
    v13 = sub_1000056C0(v8);
  }

  return v13;
}

- (id)topicHashForTopic:(id)a3 user:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(APSTopicHasher *)self _identifierForTopic:v7 user:v6];
  v9 = [(APSTopicHasher *)self topicSaltStore];
  v10 = [v9 loadSaltForIdentifier:v8 user:v6];

  if (v10)
  {
    v13 = v10;
    v11 = sub_100088454(v7, &v13);

    v7 = v13;
  }

  else
  {
    v11 = sub_1000056C0(v7);
  }

  return v11;
}

- (id)topicsToSaltsWithUser:(id)a3
{
  v4 = a3;
  v5 = [(APSTopicHasher *)self topicSaltStore];
  v6 = [v5 loadIdentifiersToSaltsForUser:v4];

  return v6;
}

- (id)_identifierForTopic:(id)a3 user:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 storageName];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v6 storageName];
    v10 = [NSString stringWithFormat:@"%@, %@", v5, v9];
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

@end