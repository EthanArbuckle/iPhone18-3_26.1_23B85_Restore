@interface CalendarSeparationSharedAccount
- (CalendarSeparationSharedAccount)initWithSource:(id)source andDelegates:(id)delegates;
- (id)displayDetail;
- (id)displayName;
- (void)stopSharingWithParticipant:(id)participant completion:(id)completion;
@end

@implementation CalendarSeparationSharedAccount

- (CalendarSeparationSharedAccount)initWithSource:(id)source andDelegates:(id)delegates
{
  sourceCopy = source;
  delegatesCopy = delegates;
  v26.receiver = self;
  v26.super_class = CalendarSeparationSharedAccount;
  v9 = [(CalendarSeparationSharedAccount *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_source, source);
    objc_storeStrong(&v10->_delegates, delegates);
    v11 = objc_opt_new();
    [(CalendarSeparationSharedResource *)v10 setCsParticipants:v11];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = delegatesCopy;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * v16);
          v18 = [CalendarSeparationParticipant alloc];
          v19 = [(CalendarSeparationParticipant *)v18 initWithGrantedDelegate:v17, v22];
          csParticipants = [(CalendarSeparationSharedResource *)v10 csParticipants];
          [csParticipants addObject:v19];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }
  }

  return v10;
}

- (id)displayName
{
  source = [(CalendarSeparationSharedAccount *)self source];
  title = [source title];

  return title;
}

- (id)displayDetail
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Account has granted delegate access" value:&stru_8400 table:0];

  return v3;
}

- (void)stopSharingWithParticipant:(id)participant completion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1490;
  v40 = sub_14A0;
  v41 = 0;
  selfCopy = self;
  source = [(CalendarSeparationSharedAccount *)self source];

  if (source)
  {
    source2 = [(CalendarSeparationSharedAccount *)selfCopy source];
    eventStore = [source2 eventStore];

    v9 = dispatch_group_create();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    delegates = [(CalendarSeparationSharedAccount *)selfCopy delegates];
    v11 = [delegates countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v11)
    {
      v12 = *v33;
      do
      {
        v13 = 0;
        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(delegates);
          }

          v14 = *(*(&v32 + 1) + 8 * v13);
          v15 = [[CalendarSeparationParticipant alloc] initWithGrantedDelegate:v14];
          v16 = v15;
          if (!participantCopy || [(CalendarSeparationParticipant *)v15 matchesDSParticipation:participantCopy])
          {
            dispatch_group_enter(v9);
            source3 = [(CalendarSeparationSharedAccount *)selfCopy source];
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_14A8;
            v28[3] = &unk_8240;
            v30 = v42;
            v31 = &v36;
            v29 = v9;
            [eventStore updateGrantedDelegate:v14 action:1 source:source3 completion:v28];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [delegates countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v11);
    }

    v18 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_151C;
    block[3] = &unk_8268;
    v26 = completionCopy;
    v27 = &v36;
    dispatch_group_notify(v9, v18, block);
  }

  else
  {
    v44 = NSLocalizedDescriptionKey;
    v45 = @"Resource is missing Source";
    v19 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v20 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v19];
    v21 = v37[5];
    v37[5] = v20;

    (*(completionCopy + 2))(completionCopy, v37[5]);
  }

  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(v42, 8);
}

@end