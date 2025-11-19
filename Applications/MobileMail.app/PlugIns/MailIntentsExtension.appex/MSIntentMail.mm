@interface MSIntentMail
- (MSIntentMail)initWithDictionary:(id)a3;
@end

@implementation MSIntentMail

- (MSIntentMail)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:MSResultsKeyMessageReference];
  v6 = MSResultsKeySubject;
  v7 = [v4 objectForKeyedSubscript:MSResultsKeySubject];
  v27.receiver = self;
  v27.super_class = MSIntentMail;
  v8 = [(MSIntentMail *)&v27 initWithIdentifier:v5 displayString:v7];

  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:v6];
    [(MSIntentMail *)v8 setSubject:v9];

    v10 = [v4 objectForKeyedSubscript:MSResultsKeyBodySummary];
    [(MSIntentMail *)v8 setBody:v10];

    v11 = +[NSCalendar currentCalendar];
    v12 = [v4 objectForKeyedSubscript:MSResultsKeyDateSent];
    v13 = [v11 components:-1 fromDate:v12];
    [(MSIntentMail *)v8 setDateSent:v13];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100003BD0;
    v25[3] = &unk_10000C638;
    v14 = objc_alloc_init(MFPersonTransformer);
    v26 = v14;
    v15 = objc_retainBlock(v25);
    v16 = [v4 objectForKeyedSubscript:MSResultsKeyRecipientTo];
    v17 = (v15[2])(v15, v16);
    [(MSIntentMail *)v8 setTo:v17];

    v18 = [v4 objectForKeyedSubscript:MSResultsKeyRecipientCc];
    v19 = (v15[2])(v15, v18);
    [(MSIntentMail *)v8 setCc:v19];

    v20 = [v4 objectForKeyedSubscript:MSResultsKeyRecipientBcc];
    v21 = (v15[2])(v15, v20);
    [(MSIntentMail *)v8 setBcc:v21];

    v22 = [v4 objectForKeyedSubscript:MSResultsKeySender];
    v23 = [v14 transformedValue:v22];
    [(MSIntentMail *)v8 setSender:v23];
  }

  return v8;
}

@end