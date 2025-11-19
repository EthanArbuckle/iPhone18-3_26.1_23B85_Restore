@interface AAFamilyDetailsResponse
+ (id)_privacySensitiveKeys;
- (AAFamilyDetailsResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (NSArray)firstNames;
- (id)privacySensitiveResponseBody;
@end

@implementation AAFamilyDetailsResponse

- (AAFamilyDetailsResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v127 = *MEMORY[0x1E69E9840];
  v122.receiver = self;
  v122.super_class = AAFamilyDetailsResponse;
  v4 = [(AAResponse *)&v122 initWithHTTPResponse:a3 data:a4];
  v5 = v4;
  if (v4 && [(NSHTTPURLResponse *)v4->super._httpResponse statusCode]== 200)
  {
    v6 = [(AAResponse *)v5 responseDictionary];
    v7 = [v6 objectForKey:@"family-members"];

    objc_opt_class();
    v94 = v7;
    v105 = v5;
    if (objc_opt_isKindOfClass())
    {
      v101 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      obj = v7;
      v8 = [obj countByEnumeratingWithState:&v118 objects:v126 count:16];
      if (v8)
      {
        v9 = v8;
        v99 = *v119;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v119 != v99)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v118 + 1) + 8 * i);
            v12 = objc_alloc_init(AAFamilyMember);
            v13 = [v11 objectForKeyedSubscript:@"member-first-name"];
            [(AAFamilyMember *)v12 setFirstName:v13];

            v14 = [v11 objectForKeyedSubscript:@"member-last-name"];
            [(AAFamilyMember *)v12 setLastName:v14];

            v15 = [v11 objectForKeyedSubscript:@"member-apple-id"];
            [(AAFamilyMember *)v12 setAppleID:v15];

            v16 = [v11 objectForKeyedSubscript:@"member-dsid"];
            [(AAFamilyMember *)v12 setPersonID:v16];

            v17 = [v11 objectForKeyedSubscript:@"member-dsid-hash"];
            [(AAFamilyMember *)v12 setPersonIDHash:v17];

            v18 = [v11 objectForKeyedSubscript:@"member-altDSID"];
            [(AAFamilyMember *)v12 setAltDSID:v18];

            v19 = [v11 objectForKeyedSubscript:@"member-is-child-account"];
            -[AAFamilyMember setIsChild:](v12, "setIsChild:", [v19 BOOLValue]);

            v20 = [v11 objectForKeyedSubscript:@"is-me"];
            -[AAFamilyMember setIsMe:](v12, "setIsMe:", [v20 BOOLValue]);

            v21 = [v11 objectForKeyedSubscript:@"member-display-label"];
            [(AAFamilyMember *)v12 setTitle:v21];

            v22 = [v11 objectForKeyedSubscript:@"is-itunes-linked"];
            -[AAFamilyMember setIsSharingPurchases:](v12, "setIsSharingPurchases:", [v22 BOOLValue]);

            v23 = [v11 objectForKeyedSubscript:@"member-is-organizer"];
            -[AAFamilyMember setIsOrganizer:](v12, "setIsOrganizer:", [v23 BOOLValue]);

            v24 = [v11 objectForKeyedSubscript:@"itunes-not-linked-message"];
            [(AAFamilyMember *)v12 setITunesNotLinkedMessage:v24];

            v25 = [v11 objectForKeyedSubscript:@"linked-itunes-account-appleid"];
            [(AAFamilyMember *)v12 setLinkediTunesAppleID:v25];

            v26 = [v11 objectForKeyedSubscript:@"linked-itunes-account-dsid"];
            [(AAFamilyMember *)v12 setLinkediTunesDSID:v26];

            v27 = [v11 objectForKeyedSubscript:@"is-ask-to-buy-enabled"];
            -[AAFamilyMember setIsAskToBuyEnabled:](v12, "setIsAskToBuyEnabled:", [v27 BOOLValue]);

            v28 = [v11 objectForKeyedSubscript:@"is-parental-controls-enabled"];
            -[AAFamilyMember setAreParentalControlsEnabled:](v12, "setAreParentalControlsEnabled:", [v28 BOOLValue]);

            v29 = [v11 objectForKeyedSubscript:@"member-join-date-epoch"];
            [v29 doubleValue];
            v31 = v30 / 1000.0;

            v32 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v31];
            [(AAFamilyMember *)v12 setJoinDate:v32];
            [(NSArray *)v101 addObject:v12];
            v5 = v105;
            if ([(AAFamilyMember *)v12 isOrganizer])
            {
              objc_storeStrong(&v105->_organizer, v12);
            }

            if ([(AAFamilyMember *)v12 isMe])
            {
              objc_storeStrong(&v105->_me, v12);
            }
          }

          v9 = [obj countByEnumeratingWithState:&v118 objects:v126 count:16];
        }

        while (v9);
      }

      [(NSArray *)v101 sortUsingComparator:&__block_literal_global_447];
      members = v5->_members;
      v5->_members = v101;
    }

    v34 = [(AAResponse *)v5 responseDictionary];
    v35 = [v34 objectForKey:@"family-invitations"];

    objc_opt_class();
    v100 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v102 = v35;
      v37 = [v102 countByEnumeratingWithState:&v114 objects:v125 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v115;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v115 != v39)
            {
              objc_enumerationMutation(v102);
            }

            v41 = *(*(&v114 + 1) + 8 * j);
            v42 = objc_alloc_init(AAFamilyInvite);
            v43 = [v41 objectForKeyedSubscript:@"invitee-last-name"];
            [(AAFamilyInvite *)v42 setOrganizerLastName:v43];

            v44 = [v41 objectForKeyedSubscript:@"invitee-first-name"];
            [(AAFamilyInvite *)v42 setOrganizerFirstName:v44];

            v45 = [v41 objectForKeyedSubscript:@"inviter-email"];
            [(AAFamilyInvite *)v42 setOrganizerEmail:v45];

            v46 = [v41 objectForKeyedSubscript:@"invite-code"];
            [(AAFamilyInvite *)v42 setCode:v46];

            v47 = [v41 objectForKeyedSubscript:@"invitee-dsid"];
            [(AAFamilyInvite *)v42 setOrganizerDSID:v47];

            v48 = [v41 objectForKeyedSubscript:@"dsid"];
            [(AAFamilyInvite *)v42 setRecepientDSID:v48];

            [(NSArray *)v36 addObject:v42];
          }

          v38 = [v102 countByEnumeratingWithState:&v114 objects:v125 count:16];
        }

        while (v38);
      }

      v5 = v105;
      invites = v105->_invites;
      v105->_invites = v36;
    }

    v50 = [(AAResponse *)v5 responseDictionary];
    v51 = [v50 objectForKey:@"transfer-requests"];

    objc_opt_class();
    v98 = v51;
    if (objc_opt_isKindOfClass())
    {
      v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v103 = v51;
      v53 = [v103 countByEnumeratingWithState:&v110 objects:v124 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v111;
        do
        {
          for (k = 0; k != v54; ++k)
          {
            if (*v111 != v55)
            {
              objc_enumerationMutation(v103);
            }

            v57 = *(*(&v110 + 1) + 8 * k);
            v58 = objc_alloc_init(AAFamilyInvite);
            [(AAFamilyInvite *)v58 setIsChildTransferInvite:1];
            v59 = [v57 objectForKeyedSubscript:@"request-code"];
            [(AAFamilyInvite *)v58 setCode:v59];

            v60 = [v57 objectForKeyedSubscript:@"requestor-first-name"];
            [(AAFamilyInvite *)v58 setOrganizerFirstName:v60];

            v61 = [v57 objectForKeyedSubscript:@"requestor-last-name"];
            [(AAFamilyInvite *)v58 setOrganizerLastName:v61];

            v62 = [v57 objectForKeyedSubscript:@"child-first-name"];
            [(AAFamilyInvite *)v58 setChildFirstName:v62];

            v63 = [v57 objectForKeyedSubscript:@"child-last-name"];
            [(AAFamilyInvite *)v58 setChildLastName:v63];

            v64 = [v57 objectForKeyedSubscript:@"requestor-dsid"];
            [(AAFamilyInvite *)v58 setOrganizerDSID:v64];

            [v52 addObject:v58];
          }

          v54 = [v103 countByEnumeratingWithState:&v110 objects:v124 count:16];
        }

        while (v54);
      }

      v5 = v105;
      v65 = v105->_invites;
      if (v65)
      {
        v66 = [(NSArray *)v65 arrayByAddingObjectsFromArray:v52];
      }

      else
      {
        v66 = v52;
      }

      v51 = v98;
      v67 = v105->_invites;
      v105->_invites = v66;
    }

    v68 = [(AAResponse *)v5 responseDictionary];
    v69 = [v68 objectForKey:@"pending-members"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      obja = v69;
      v104 = v69;
      v71 = [v104 countByEnumeratingWithState:&v106 objects:v123 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v107;
        do
        {
          for (m = 0; m != v72; ++m)
          {
            if (*v107 != v73)
            {
              objc_enumerationMutation(v104);
            }

            v75 = *(*(&v106 + 1) + 8 * m);
            v76 = objc_alloc_init(AAFamilyMember);
            v77 = [v75 objectForKeyedSubscript:@"member-invite-email"];
            [(AAFamilyMember *)v76 setAppleID:v77];

            v78 = [v75 objectForKeyedSubscript:@"member-display-label"];
            [(AAFamilyMember *)v76 setTitle:v78];

            v79 = [v75 objectForKeyedSubscript:@"member-first-name"];
            [(AAFamilyMember *)v76 setFirstName:v79];

            v80 = [v75 objectForKeyedSubscript:@"member-last-name"];
            [(AAFamilyMember *)v76 setLastName:v80];

            [(NSArray *)v70 addObject:v76];
          }

          v72 = [v104 countByEnumeratingWithState:&v106 objects:v123 count:16];
        }

        while (v72);
      }

      v5 = v105;
      pendingMembers = v105->_pendingMembers;
      v105->_pendingMembers = v70;

      v69 = obja;
      v51 = v98;
    }

    v82 = [(AAResponse *)v5 responseDictionary];
    v83 = [v82 objectForKey:@"family-meta-info"];

    if (v83)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v84 = [v83 objectForKeyedSubscript:@"add-child-enabled"];
        v5->_canAddChildMembers = [v84 BOOLValue];

        v85 = [v83 objectForKeyedSubscript:@"add-member-enabled"];
        v5->_canAddMembers = [v85 BOOLValue];

        v86 = [v83 objectForKeyedSubscript:@"add-family-member-label"];
        addMemberInstructions = v5->_addMemberInstructions;
        v5->_addMemberInstructions = v86;

        v88 = [v83 objectForKeyedSubscript:@"add-child-sub-label"];
        childAccountPrompt = v5->_childAccountPrompt;
        v5->_childAccountPrompt = v88;

        v90 = [v83 objectForKeyedSubscript:@"add-child-link-title"];
        childAccountButtonTitle = v5->_childAccountButtonTitle;
        v5->_childAccountButtonTitle = v90;
      }
    }
  }

  v92 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __53__AAFamilyDetailsResponse_initWithHTTPResponse_data___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 joinDate];
  v6 = [v4 joinDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (NSArray)firstNames
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_members count])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_members;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (([v9 isMe] & 1) == 0)
          {
            v10 = [v9 firstName];
            if (v10)
            {
              [v3 addObject:v10];
            }
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)_privacySensitiveKeys
{
  if (_privacySensitiveKeys_onceToken_514 != -1)
  {
    +[AAFamilyDetailsResponse _privacySensitiveKeys];
  }

  v3 = _privacySensitiveKeys_keysToRedact_513;

  return v3;
}

void __48__AAFamilyDetailsResponse__privacySensitiveKeys__block_invoke()
{
  v4[8] = *MEMORY[0x1E69E9840];
  v4[0] = @"linked-itunes-account-dsid";
  v4[1] = @"member-altDSID";
  v4[2] = @"member-date-of-birth";
  v4[3] = @"member-display-label";
  v4[4] = @"member-dsid";
  v4[5] = @"member-first-name";
  v4[6] = @"member-last-name";
  v4[7] = @"member-phone-numbers";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:8];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v0];
  v2 = _privacySensitiveKeys_keysToRedact_513;
  _privacySensitiveKeys_keysToRedact_513 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (id)privacySensitiveResponseBody
{
  v3 = [(AAResponse *)self responseDictionary];

  if (v3)
  {
    v4 = [AAPrivacySensitiveDictionaryLog alloc];
    v5 = [(AAResponse *)self responseDictionary];
    v6 = +[AAFamilyDetailsResponse _privacySensitiveKeys];
    v7 = [(AAPrivacySensitiveDictionaryLog *)v4 initWithDictionary:v5 forKeys:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end