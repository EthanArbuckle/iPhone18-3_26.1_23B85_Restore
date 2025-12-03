@interface GroupParticipantConvergenceResult
+ (id)groupParticipantConvergenceResultForUpdateType:(unint64_t)type context:(id)context;
- (GroupParticipantConvergenceResult)initWithMemberStatusChanges:(id)changes chatStatusChanges:(id)statusChanges;
@end

@implementation GroupParticipantConvergenceResult

+ (id)groupParticipantConvergenceResultForUpdateType:(unint64_t)type context:(id)context
{
  typeCopy = type;
  contextCopy = context;
  v5 = objc_alloc_init(NSMutableArray);
  v69 = objc_alloc_init(NSMutableArray);
  toIdentifier = [contextCopy toIdentifier];
  _stripFZIDPrefix = [toIdentifier _stripFZIDPrefix];

  currentParticipants = [contextCopy currentParticipants];
  v68 = [NSSet setWithArray:currentParticipants];
  switch(typeCopy)
  {
    case 2uLL:
      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          toParticipants = [contextCopy toParticipants];
          fromIdentifier = [contextCopy fromIdentifier];
          allowSelfRemoval = [contextCopy allowSelfRemoval];
          v40 = @"NO";
          *buf = 138413314;
          v91 = toParticipants;
          v92 = 2112;
          if (allowSelfRemoval)
          {
            v40 = @"YES";
          }

          v93 = _stripFZIDPrefix;
          v94 = 2112;
          v95 = fromIdentifier;
          v96 = 2048;
          v97 = 2;
          v98 = 2112;
          v99 = v40;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, " Updating participants: %@   toIdentifier: %@, fromIdentifier :%@, updateType %lu, allowSelfRemoval %@", buf, 0x34u);
        }
      }

      v41 = [currentParticipants mutableCopy];
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      toParticipants2 = [contextCopy toParticipants];
      v43 = [toParticipants2 countByEnumeratingWithState:&v74 objects:v87 count:16];
      if (v43)
      {
        v44 = *v75;
        v67 = 1;
        do
        {
          for (i = 0; i != v43; i = i + 1)
          {
            if (*v75 != v44)
            {
              objc_enumerationMutation(toParticipants2);
            }

            v46 = *(*(&v74 + 1) + 8 * i);
            if ([v46 isEqualToIgnoringCase:_stripFZIDPrefix])
            {
              v67 = 0;
            }

            else
            {
              if (([v68 containsObject:v46] & 1) == 0)
              {
                if (IMOSLoggingEnabled())
                {
                  v47 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v91 = v46;
                    _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "   Adding participant: %@", buf, 0xCu);
                  }
                }

                v48 = [contextCopy memberStatusChangeContextForUpdateType:2 participant:v46];
                [v48 setStatus:2];
                [v5 addObject:v48];
              }

              [v41 removeObject:v46];
            }
          }

          v43 = [toParticipants2 countByEnumeratingWithState:&v74 objects:v87 count:16];
        }

        while (v43);
      }

      else
      {
        v67 = 1;
      }

      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v91 = v41;
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "   Participants to be removed %@", buf, 0xCu);
        }
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v50 = v41;
      v51 = [v50 countByEnumeratingWithState:&v70 objects:v86 count:16];
      if (v51)
      {
        v52 = *v71;
        do
        {
          for (j = 0; j != v51; j = j + 1)
          {
            if (*v71 != v52)
            {
              objc_enumerationMutation(v50);
            }

            v54 = *(*(&v70 + 1) + 8 * j);
            if (![v54 isEqualToIgnoringCase:_stripFZIDPrefix] || objc_msgSend(contextCopy, "allowSelfRemoval"))
            {
              if (IMOSLoggingEnabled())
              {
                v55 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v91 = v54;
                  _os_log_impl(&dword_0, v55, OS_LOG_TYPE_INFO, "   Removing participant: %@", buf, 0xCu);
                }
              }

              v56 = [contextCopy memberStatusChangeContextForUpdateType:2 participant:v54];
              [v56 setStatus:3];
              [v5 addObject:v56];
            }
          }

          v51 = [v50 countByEnumeratingWithState:&v70 objects:v86 count:16];
        }

        while (v51);
      }

      if ((v67 & 1) == 0)
      {
        goto LABEL_98;
      }

      break;
    case 1uLL:
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          participantsToRemove = [contextCopy participantsToRemove];
          fromIdentifier2 = [contextCopy fromIdentifier];
          allowSelfRemoval2 = [contextCopy allowSelfRemoval];
          v27 = @"NO";
          *buf = 138413314;
          v91 = participantsToRemove;
          v92 = 2112;
          if (allowSelfRemoval2)
          {
            v27 = @"YES";
          }

          v93 = _stripFZIDPrefix;
          v94 = 2112;
          v95 = fromIdentifier2;
          v96 = 2048;
          v97 = 1;
          v98 = 2112;
          v99 = v27;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, " Updating participants: %@   toIdentifier: %@, fromIdentifier :%@, updateType %lu, allowSelfRemoval %@", buf, 0x34u);
        }
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      participantsToRemove2 = [contextCopy participantsToRemove];
      v28 = [participantsToRemove2 countByEnumeratingWithState:&v78 objects:v88 count:16];
      if (!v28)
      {
        goto LABEL_97;
      }

      v29 = 0;
      v30 = *v79;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v79 != v30)
          {
            objc_enumerationMutation(participantsToRemove2);
          }

          v32 = *(*(&v78 + 1) + 8 * k);
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v91 = v32;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, " Removing participant explicitly: %@", buf, 0xCu);
            }
          }

          v34 = [contextCopy memberStatusChangeContextForUpdateType:1 participant:v32];
          [v34 setStatus:3];
          [v5 addObject:v34];
          v35 = [v32 isEqualToIgnoringCase:_stripFZIDPrefix];

          v29 |= v35;
        }

        v28 = [participantsToRemove2 countByEnumeratingWithState:&v78 objects:v88 count:16];
      }

      while (v28);

      if ((v29 & 1) == 0)
      {
        goto LABEL_98;
      }

      break;
    case 0uLL:
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          participantsToAdd = [contextCopy participantsToAdd];
          fromIdentifier3 = [contextCopy fromIdentifier];
          allowSelfRemoval3 = [contextCopy allowSelfRemoval];
          v12 = @"NO";
          *buf = 138413314;
          v91 = participantsToAdd;
          v92 = 2112;
          if (allowSelfRemoval3)
          {
            v12 = @"YES";
          }

          v93 = _stripFZIDPrefix;
          v94 = 2112;
          v95 = fromIdentifier3;
          v96 = 2048;
          v97 = 0;
          v98 = 2112;
          v99 = v12;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, " Updating participants: %@   toIdentifier: %@, fromIdentifier :%@, updateType %lu, allowSelfRemoval %@", buf, 0x34u);
        }
      }

      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      participantsToRemove2 = [contextCopy participantsToAdd];
      v14 = [participantsToRemove2 countByEnumeratingWithState:&v82 objects:v89 count:16];
      if (v14)
      {
        v15 = *v83;
        do
        {
          for (m = 0; m != v14; m = m + 1)
          {
            if (*v83 != v15)
            {
              objc_enumerationMutation(participantsToRemove2);
            }

            v17 = *(*(&v82 + 1) + 8 * m);
            v18 = [v17 isEqualToIgnoringCase:_stripFZIDPrefix];
            v19 = IMOSLoggingEnabled();
            if (v18)
            {
              if (v19)
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, " I was added to a chat, so updating chat status", buf, 2u);
                }
              }

              v21 = [contextCopy chatStatusChangeContextForUpdateType:0 participant:v17];
              [v21 setChatStatus:2];
              [v69 addObject:v21];
            }

            else
            {
              if (v19)
              {
                v22 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v91 = v17;
                  _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, " Adding participant explicitly: %@", buf, 0xCu);
                }
              }

              v21 = [contextCopy memberStatusChangeContextForUpdateType:0 participant:v17];
              [v21 setStatus:2];
              [v5 addObject:v21];
            }
          }

          v14 = [participantsToRemove2 countByEnumeratingWithState:&v82 objects:v89 count:16];
        }

        while (v14);
      }

LABEL_97:

      goto LABEL_98;
  }

  if ([contextCopy allowSelfRemoval])
  {
    if (IMOSLoggingEnabled())
    {
      v57 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "   I was removed from this chat, leaving", buf, 2u);
      }
    }

    toIdentifier2 = [contextCopy toIdentifier];
    participantsToRemove2 = [contextCopy chatStatusChangeContextForUpdateType:v65 participant:toIdentifier2];

    [participantsToRemove2 setChatStatus:3];
    [v69 addObject:participantsToRemove2];
    goto LABEL_97;
  }

LABEL_98:
  if ([v5 count] || objc_msgSend(v69, "count"))
  {
    v59 = [GroupParticipantConvergenceResult alloc];
    v60 = [v5 copy];
    v61 = [v69 copy];
    v62 = [(GroupParticipantConvergenceResult *)v59 initWithMemberStatusChanges:v60 chatStatusChanges:v61];
  }

  else
  {
    v62 = 0;
  }

  return v62;
}

- (GroupParticipantConvergenceResult)initWithMemberStatusChanges:(id)changes chatStatusChanges:(id)statusChanges
{
  changesCopy = changes;
  statusChangesCopy = statusChanges;
  v12.receiver = self;
  v12.super_class = GroupParticipantConvergenceResult;
  v9 = [(GroupParticipantConvergenceResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memberStatusChanges, changes);
    objc_storeStrong(&v10->_chatStatusChanges, statusChanges);
  }

  return v10;
}

@end