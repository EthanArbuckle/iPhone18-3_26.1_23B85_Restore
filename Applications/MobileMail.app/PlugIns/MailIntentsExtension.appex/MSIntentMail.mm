@interface MSIntentMail
- (MSIntentMail)initWithDictionary:(id)dictionary;
@end

@implementation MSIntentMail

- (MSIntentMail)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:MSResultsKeyMessageReference];
  v6 = MSResultsKeySubject;
  v7 = [dictionaryCopy objectForKeyedSubscript:MSResultsKeySubject];
  v27.receiver = self;
  v27.super_class = MSIntentMail;
  v8 = [(MSIntentMail *)&v27 initWithIdentifier:v5 displayString:v7];

  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:v6];
    [(MSIntentMail *)v8 setSubject:v9];

    v10 = [dictionaryCopy objectForKeyedSubscript:MSResultsKeyBodySummary];
    [(MSIntentMail *)v8 setBody:v10];

    v11 = +[NSCalendar currentCalendar];
    v12 = [dictionaryCopy objectForKeyedSubscript:MSResultsKeyDateSent];
    v13 = [v11 components:-1 fromDate:v12];
    [(MSIntentMail *)v8 setDateSent:v13];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100003BD0;
    v25[3] = &unk_10000C638;
    v14 = objc_alloc_init(MFPersonTransformer);
    v26 = v14;
    v15 = objc_retainBlock(v25);
    v16 = [dictionaryCopy objectForKeyedSubscript:MSResultsKeyRecipientTo];
    v17 = (v15[2])(v15, v16);
    [(MSIntentMail *)v8 setTo:v17];

    v18 = [dictionaryCopy objectForKeyedSubscript:MSResultsKeyRecipientCc];
    v19 = (v15[2])(v15, v18);
    [(MSIntentMail *)v8 setCc:v19];

    v20 = [dictionaryCopy objectForKeyedSubscript:MSResultsKeyRecipientBcc];
    v21 = (v15[2])(v15, v20);
    [(MSIntentMail *)v8 setBcc:v21];

    v22 = [dictionaryCopy objectForKeyedSubscript:MSResultsKeySender];
    v23 = [v14 transformedValue:v22];
    [(MSIntentMail *)v8 setSender:v23];
  }

  return v8;
}

@end