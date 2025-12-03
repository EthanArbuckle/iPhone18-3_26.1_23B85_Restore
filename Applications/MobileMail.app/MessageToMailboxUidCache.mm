@interface MessageToMailboxUidCache
- (MessageToMailboxUidCache)init;
- (MessageToMailboxUidCache)initWithLibrary:(id)library;
- (id)_mailboxWithMailboxLibraryID:(int64_t)d;
- (id)debugDescription;
- (id)mailboxForMessage:(id)message;
@end

@implementation MessageToMailboxUidCache

- (MessageToMailboxUidCache)initWithLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MessageToMailboxUidCache.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v12.receiver = self;
  v12.super_class = MessageToMailboxUidCache;
  v7 = [(MessageToMailboxUidCache *)&v12 init];
  if (v7)
  {
    v8 = +[NSMapTable strongToStrongObjectsMapTable];
    mailboxCache = v7->_mailboxCache;
    v7->_mailboxCache = v8;

    objc_storeStrong(&v7->_library, library);
  }

  return v7;
}

- (MessageToMailboxUidCache)init
{
  v3 = +[MFMailMessageLibrary defaultInstance];
  v4 = [(MessageToMailboxUidCache *)self initWithLibrary:v3];

  return v4;
}

- (id)mailboxForMessage:(id)message
{
  messageCopy = message;
  if (!qword_1006DD388)
  {
    qword_1006DD388 = objc_opt_class();
  }

  if (objc_opt_isKindOfClass())
  {
    mailboxID = [messageCopy mailboxID];
    mailboxCache = self->_mailboxCache;
    v7 = [NSNumber numberWithLongLong:mailboxID];
    mailbox = [(NSMapTable *)mailboxCache objectForKey:v7];

    if (!mailbox)
    {
      mailbox = [messageCopy mailbox];
      if (mailbox)
      {
        v9 = self->_mailboxCache;
        v10 = [NSNumber numberWithLongLong:mailboxID];
        [(NSMapTable *)v9 setObject:mailbox forKey:v10];
      }
    }
  }

  else
  {
    mailbox = [messageCopy mailbox];
  }

  return mailbox;
}

- (id)_mailboxWithMailboxLibraryID:(int64_t)d
{
  v3 = [(MFMailMessageLibrary *)self->_library urlForMailboxID:d];
  v4 = [MailAccount mailboxUidFromActiveAccountsForURL:v3];

  return v4;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"<%@:%p> {(\n"), v4, self;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_mailboxCache;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_mailboxCache objectForKey:v10];
        unsignedLongValue = [v10 unsignedLongValue];
        [v5 appendFormat:@"\t%ld\t: %@\n", unsignedLongValue, v11, v14];
      }

      v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [v5 appendString:@"}"]);

  return v5;
}

@end