@interface TUIStatsFeedPass
- (NSString)description;
- (TUIStatsFeedPass)initWithMode:(unint64_t)a3 timingCollector:(id)a4 passes:(id)a5;
@end

@implementation TUIStatsFeedPass

- (TUIStatsFeedPass)initWithMode:(unint64_t)a3 timingCollector:(id)a4 passes:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v25.receiver = self;
  v25.super_class = TUIStatsFeedPass;
  v10 = [(TUIStatsFeedPass *)&v25 init];
  v11 = v10;
  if (v10)
  {
    v10->_reason = 0;
    for (i = 1; i != 6; ++i)
    {
      [v8 elapsedTimeForPhase:i - 1];
      *(&v11->super.isa + i) = v13;
    }

    v11->_eventCount[28] = 0;
    *&v11->_eventCount[24] = 0u;
    *&v11->_eventCount[26] = 0u;
    *&v11->_eventCount[20] = 0u;
    *&v11->_eventCount[22] = 0u;
    *&v11->_eventCount[16] = 0u;
    *&v11->_eventCount[18] = 0u;
    *&v11->_eventCount[12] = 0u;
    *&v11->_eventCount[14] = 0u;
    *&v11->_eventCount[8] = 0u;
    *&v11->_eventCount[10] = 0u;
    *&v11->_eventCount[4] = 0u;
    *&v11->_eventCount[6] = 0u;
    *v11->_eventCount = 0u;
    *&v11->_eventCount[2] = 0u;
    if ((v6 & 8) != 0)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_5B86C;
      v23[3] = &unk_25F590;
      v24 = v11;
      [v9 enumerateObjectsUsingBlock:v23];
    }

    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_5B8C4;
    v21 = &unk_25F590;
    v14 = v11;
    v22 = v14;
    [v9 enumerateObjectsUsingBlock:&v18];
    if ((v6 & 2) != 0)
    {
      v15 = [v9 copy];
      entryPasses = v14->_entryPasses;
      v14->_entryPasses = v15;
    }
  }

  return v11;
}

- (NSString)description
{
  v3 = objc_opt_new();
  sub_5AA20(v3, self, @"\n");
  [v3 appendString:@"\n"];
  sub_5AB50(v3, self, @"\n");
  v4 = [v3 copy];

  return v4;
}

@end