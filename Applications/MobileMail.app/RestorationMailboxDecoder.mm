@interface RestorationMailboxDecoder
+ (id)decoderWithDaemonInterface:(id)interface log:(id)log;
- (EMDaemonInterface)daemonInterface;
- (RestorationMailboxDecoder)initWithDaemonInterface:(id)interface log:(id)log;
- (id)_decodeGenericMailbox:(id)mailbox;
- (id)_decodeSmartMailbox:(id)mailbox;
- (id)_decodeUnifiedMailbox:(id)mailbox;
- (id)decodeMailboxData:(id)data;
@end

@implementation RestorationMailboxDecoder

+ (id)decoderWithDaemonInterface:(id)interface log:(id)log
{
  interfaceCopy = interface;
  logCopy = log;
  v7 = [[RestorationMailboxDecoder alloc] initWithDaemonInterface:interfaceCopy log:logCopy];

  return v7;
}

- (RestorationMailboxDecoder)initWithDaemonInterface:(id)interface log:(id)log
{
  interfaceCopy = interface;
  v11.receiver = self;
  v11.super_class = RestorationMailboxDecoder;
  v7 = [(RestorationMailboxDecoder *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_daemonInterface, interfaceCopy);
    if (log)
    {
      v8->_log = log;
    }

    else
    {
      v9 = sub_100243B10();
      v8->_log = v9;
    }
  }

  return v8;
}

- (id)decodeMailboxData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy || ![dataCopy length])
  {
    v14 = [(RestorationMailboxDecoder *)self log];
    v12 = [NSError mf_restorationMailboxNotAvailableErrorWithUnderlyingError:0];
    v7 = v14;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v12 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10048CCD8();
    }

    v13 = [EFFuture futureWithError:v12];
    v8 = v7;
    goto LABEL_14;
  }

  v6 = [(RestorationMailboxDecoder *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = [v5 length];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RestorationMailboxDecoder: Decoding mailbox from data of length %lu", buf, 0xCu);
  }

  v19 = 0;
  v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:&v19];
  v8 = v19;
  if (v8)
  {
    v9 = [(RestorationMailboxDecoder *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v8 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10048CBDC();
    }

    v10 = [(RestorationMailboxDecoder *)self log];
    v11 = [NSError mf_restorationMailboxNotAvailableErrorWithUnderlyingError:0];
    v12 = v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v11 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10048CC28();
    }

LABEL_10:

    v13 = [EFFuture futureWithError:v11];

LABEL_14:
    goto LABEL_15;
  }

  v16 = [v7 decodeIntegerForKey:@"SerializationType"];
  if (v16 == 1)
  {
    v17 = [(RestorationMailboxDecoder *)self _decodeGenericMailbox:v7];
  }

  else if (v16 == 2)
  {
    v17 = [(RestorationMailboxDecoder *)self _decodeSmartMailbox:v7];
  }

  else
  {
    if (v16 != 3)
    {
      v18 = [(RestorationMailboxDecoder *)self log];
      v11 = [NSError mf_restorationMailboxNotAvailableErrorWithUnderlyingError:0];
      v12 = v18;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [v11 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_10048CC80();
      }

      goto LABEL_10;
    }

    v17 = [(RestorationMailboxDecoder *)self _decodeUnifiedMailbox:v7];
  }

  v13 = v17;
LABEL_15:

  return v13;
}

- (id)_decodeGenericMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v5 = [(RestorationMailboxDecoder *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10048CD30();
  }

  v6 = [mailboxCopy decodeObjectOfClass:objc_opt_class() forKey:@"ObjectID"];
  if (v6)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10048CD64();
    }

    daemonInterface = [(RestorationMailboxDecoder *)self daemonInterface];
    mailboxRepository = [daemonInterface mailboxRepository];
    v9 = [mailboxRepository mailboxForObjectID:v6];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100244B78;
    v17[3] = &unk_100654B90;
    v10 = v5;
    v18 = v10;
    v11 = [v9 recover:v17];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100244C94;
    v15[3] = &unk_10064F170;
    v16 = v10;
    [v11 addSuccessBlock:v15];

    v12 = v18;
  }

  else
  {
    v12 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:0];
    v13 = v5;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v12 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10048CD98();
    }

    v11 = [EFFuture futureWithError:v12];
  }

  return v11;
}

- (id)_decodeSmartMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v5 = [(RestorationMailboxDecoder *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10048CE74();
  }

  v6 = [mailboxCopy decodeObjectOfClass:objc_opt_class() forKey:@"SmartMailboxSourceType"];
  v7 = v6;
  if (!v6)
  {
    v14 = v5;
    mailbox = [NSError mf_restorationMailboxNotAvailableErrorWithUnderlyingError:0];
    v10 = v14;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [mailbox ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10048CFB0();
    }

    v13 = [EFFuture futureWithError:mailbox];
    goto LABEL_14;
  }

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  if (_MSSourceTypeIsValid())
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10048CEF4(unsignedIntegerValue, v5);
    }

    v9 = [SharedMailboxController sharedInstanceForSourceType:unsignedIntegerValue];
    v10 = v9;
    if (v9)
    {
      mailbox = [v9 mailbox];
      v12 = v5;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [mailbox ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_10048CF6C();
      }

      v13 = [EFFuture futureWithResult:mailbox];
LABEL_14:
      v15 = v13;
      goto LABEL_22;
    }

    v21 = [NSString stringWithFormat:@"No SharedMailboxController found for source type (%lu)", unsignedIntegerValue];
    v22 = v5;
    v19 = v21;
    v23 = [NSError mf_restorationMailboxNotAvailableErrorWithUnderlyingError:0];
    v18 = v22;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [v23 ef_publicDescription];
      sub_10048CEA8(v19, ef_publicDescription, v26);
    }

    v15 = [EFFuture futureWithError:v23];

    mailbox = v19;
  }

  else
  {
    v16 = [NSString stringWithFormat:@"Decoded smart mailbox source type (%lu) is invalid.", unsignedIntegerValue];
    v17 = v5;
    v18 = v16;
    v19 = [NSError mf_restorationMailboxNotAvailableErrorWithUnderlyingError:0];
    mailbox = v17;
    if (os_log_type_enabled(mailbox, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription2 = [v19 ef_publicDescription];
      sub_10048CEA8(v18, ef_publicDescription2, v26);
    }

    v15 = [EFFuture futureWithError:v19];
    v10 = v18;
  }

LABEL_22:

  return v15;
}

- (id)_decodeUnifiedMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v5 = [(RestorationMailboxDecoder *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10048D008();
  }

  if ([mailboxCopy containsValueForKey:@"UnifiedMailboxType"])
  {
    v6 = [mailboxCopy decodeIntegerForKey:@"UnifiedMailboxType"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10048D094(v6, v5);
    }

    v7 = [mailboxCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnifiedMailboxName"];
    if (v6 == 5)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10048D10C();
      }

      v8 = +[LocalAccount localAccount];
      transientDraftsFolder = [v8 transientDraftsFolder];
      v10 = [transientDraftsFolder URL];

      v11 = [EMMessageListItemPredicates predicateForExcludingMessagesInMailboxWithURL:v10];
    }

    else
    {
      v11 = 0;
    }

    v14 = [EMSmartMailbox unifiedMailboxOfType:v6 name:v7 additionalPredicate:v11];
    v15 = v5;
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [v14 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_10048D140();
      }

      v13 = [EFFuture futureWithResult:v14];
    }

    else
    {
      v17 = [NSError mf_restorationMailboxNotAvailableErrorWithUnderlyingError:0];
      v18 = v16;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [v17 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_10048D184();
      }

      v13 = [EFFuture futureWithError:v17];
    }
  }

  else
  {
    v12 = v5;
    v11 = [NSError mf_restorationMailboxNotAvailableErrorWithUnderlyingError:0];
    v7 = v12;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v11 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10048D03C();
    }

    v13 = [EFFuture futureWithError:v11];
  }

  return v13;
}

- (EMDaemonInterface)daemonInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonInterface);

  return WeakRetained;
}

@end