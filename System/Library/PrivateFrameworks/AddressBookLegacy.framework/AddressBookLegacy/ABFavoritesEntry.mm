@interface ABFavoritesEntry
+ (void)_runLookup;
- (ABFavoritesEntry)initWithDictionaryRepresentation:(id)a3 addressBook:(void *)a4;
- (ABFavoritesEntry)initWithPerson:(void *)a3 property:(int)a4 identifier:(int)a5 type:(int)a6;
- (BOOL)isEqual:(id)a3;
- (id)dictionaryRepresentation;
- (id)displayName;
- (id)label;
- (void)ABPerson;
- (void)_lookupChanged:(id)a3;
- (void)_lookupNotFound;
- (void)_postEntryChanged;
- (void)_queueLookup;
- (void)_unqueueLookup;
- (void)dealloc;
- (void)dictionaryRepresentation:(id *)a3 isDirty:(BOOL *)a4;
@end

@implementation ABFavoritesEntry

- (ABFavoritesEntry)initWithPerson:(void *)a3 property:(int)a4 identifier:(int)a5 type:(int)a6
{
  v19.receiver = self;
  v19.super_class = ABFavoritesEntry;
  v10 = [(ABFavoritesEntry *)&v19 init];
  *(v10 + 6) = a4;
  RecordID = ABRecordGetRecordID(a3);
  *(v10 + 2) = RecordID;
  if (RecordID == -1)
  {
    goto LABEL_12;
  }

  *(v10 + 3) = a5;
  if (a3 && (v12 = ABCGetAddressBookForRecord()) != 0)
  {
    v13 = CFRetain(v12);
  }

  else
  {
    v13 = ABAddressBookCreateWithOptions(0, 0);
  }

  *(v10 + 8) = v13;
  *(v10 + 6) = ABCopyPreferredNameForPerson(a3);
  v14 = ABRecordCopyValue(a3, a4);
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  if (ABMultiValueGetCount(v14) < 1)
  {
    CFRelease(v15);
LABEL_12:

    return 0;
  }

  IndexForIdentifier = ABMultiValueGetIndexForIdentifier(v15, a5);
  *(v10 + 2) = ABMultiValueCopyValueAtIndex(v15, IndexForIdentifier);
  *(v10 + 5) = ABMultiValueCopyLabelAtIndex(v15, IndexForIdentifier);
  v17 = *(v10 + 8);
  if (v17)
  {
    *(v10 + 7) = ABAddressBookCopyUniqueIdentifier(v17);
  }

  *(v10 + 7) = a6;
  *(v10 + 32) |= 1u;
  CFRelease(v15);
  return v10;
}

- (ABFavoritesEntry)initWithDictionaryRepresentation:(id)a3 addressBook:(void *)a4
{
  v13.receiver = self;
  v13.super_class = ABFavoritesEntry;
  v6 = [(ABFavoritesEntry *)&v13 init];
  if (v6)
  {
    v6->_property = [objc_msgSend(a3 objectForKey:{@"Property", "intValue"}];
    v6->_value = [a3 objectForKey:@"Value"];
    v6->_label = [a3 objectForKey:@"Label"];
    v6->_name = [a3 objectForKey:@"Name"];
    v6->_abUid = [objc_msgSend(a3 objectForKey:{@"ABUid", "intValue"}];
    v6->_abIdentifier = [objc_msgSend(a3 objectForKey:{@"ABIdentifier", "intValue"}];
    v6->_abDatabaseUUID = [objc_msgSend(a3 objectForKey:{@"ABDatabaseUUID", "copy"}];
    v6->_type = 0;
    v7 = [a3 objectForKey:@"EntryType"];
    if (v7 && (v8 = [v7 intValue], v6->_type = v8, v8 == -1))
    {

      return 0;
    }

    else
    {
      if (a4)
      {
        CFRetain(a4);
      }

      else
      {
        ABDiagnosticsEnabled();
        _ABLog2(4, "[ABFavoritesEntry initWithDictionaryRepresentation:addressBook:]", 135, 0, @"addressBook is NULL, some API is non-functional when this is the case (example -ABPerson)", v9, v10, v11, v13.receiver);
      }

      v6->_addressBook = a4;
    }
  }

  return v6;
}

- (void)dealloc
{
  [(ABFavoritesEntry *)self _unqueueLookup];

  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v4.receiver = self;
  v4.super_class = ABFavoritesEntry;
  [(ABFavoritesEntry *)&v4 dealloc];
}

- (id)dictionaryRepresentation
{
  v3 = MEMORY[0x1E695DF90];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_abUid];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_abIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_property];
  v7 = [v3 dictionaryWithObjectsAndKeys:{v4, @"ABUid", v5, @"ABIdentifier", v6, @"Property", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", self->_type), @"EntryType", 0}];
  v8 = v7;
  value = self->_value;
  if (value)
  {
    [v7 setObject:value forKey:@"Value"];
  }

  label = self->_label;
  if (label)
  {
    [v8 setObject:label forKey:@"Label"];
  }

  name = self->_name;
  if (name)
  {
    [v8 setObject:name forKey:@"Name"];
  }

  abDatabaseUUID = self->_abDatabaseUUID;
  if (abDatabaseUUID)
  {
    [v8 setObject:abDatabaseUUID forKey:@"ABDatabaseUUID"];
  }

  return v8;
}

- (void)dictionaryRepresentation:(id *)a3 isDirty:(BOOL *)a4
{
  *a3 = [(ABFavoritesEntry *)self dictionaryRepresentation];
  *a4 = *(self + 32) & 1;
  *(self + 32) &= ~1u;
}

- (id)displayName
{
  result = self->_name;
  if (!result || self->_abUid < 0)
  {
    return self->_value;
  }

  return result;
}

- (id)label
{
  label = self->_label;
  if (!label || self->_abUid < 0)
  {
    return 0;
  }

  v4 = ABAddressBookCopyLocalizedLabel(label);
  v5 = v4;
  return v4;
}

- (void)ABPerson
{
  result = self->_addressBook;
  if (result)
  {
    return ABAddressBookGetPersonWithRecordID(result, self->_abUid);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self->_property == *(a3 + 6))
  {
    v5 = [(NSString *)self->_value isEqualToString:*(a3 + 2)];
    if (!v5)
    {
      return v5;
    }

    if (self->_type == *(a3 + 7))
    {
      label = self->_label;
      v7 = *(a3 + 5);
      if (label && v7)
      {
        if (![(NSString *)label isEqualToString:?]|| self->_abUid != *(a3 + 2))
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }

      if (!(label | v7))
      {
LABEL_12:
        LOBYTE(v5) = 1;
        return v5;
      }
    }

LABEL_8:
    LOBYTE(v5) = 0;
    return v5;
  }

  LOBYTE(v5) = 0;
  return v5;
}

+ (void)_runLookup
{
  v58 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v2 = ABAddressBookCreateWithOptions(0, 0);
  v3 = v2;
  if (v2)
  {
    v4 = ABAddressBookCopyUniqueIdentifier(v2);
  }

  else
  {
    v4 = 0;
  }

  v5 = &OBJC_IVAR___ABVCardLexer__length;
  [__LookupQueueLock lock];
  if (CFArrayGetCount(__LookupQueue) >= 1)
  {
    v61 = *MEMORY[0x1E695E738];
    v57 = v4;
    while (1)
    {
      v6 = CFArrayGetValueAtIndex(__LookupQueue, 0);
      CFArrayRemoveValueAtIndex(__LookupQueue, 0);
      [*(v5 + 265) unlock];
      if (!v6)
      {
        goto LABEL_127;
      }

      if (v4)
      {
        v8 = [*(v6 + 7) isEqualToString:v4] ^ 1;
      }

      else
      {
        v8 = 0;
      }

      v64 = v8;
      if (!v3 || (v9 = *(v6 + 2), v7 = 0, (v9 < 0) | v8 & 1))
      {
        v10 = 0;
        IndexForIdentifier = -1;
        goto LABEL_23;
      }

      PersonWithRecordID = ABAddressBookGetPersonWithRecordID(v3, v9);
      if (!PersonWithRecordID)
      {
        v10 = 0;
LABEL_21:
        IndexForIdentifier = -1;
        goto LABEL_22;
      }

      v13 = PersonWithRecordID;
      v14 = ABRecordCopyValue(PersonWithRecordID, *(v6 + 6));
      v10 = v14;
      if (!v14)
      {
        goto LABEL_21;
      }

      IndexForIdentifier = ABMultiValueGetIndexForIdentifier(v14, *(v6 + 3));
      if (IndexForIdentifier < 0)
      {
        goto LABEL_92;
      }

      v15 = ABMultiValueCopyLabelAtIndex(v10, IndexForIdentifier);
      v16 = *(v6 + 5);
      if (!v16)
      {
        goto LABEL_90;
      }

      if ([v16 isEqualToString:v15])
      {
        break;
      }

LABEL_91:

      IndexForIdentifier = -1;
LABEL_92:
      if (!*(v6 + 5))
      {
        goto LABEL_22;
      }

      Count = ABMultiValueGetCount(v10);
      v7 = __OFSUB__(Count, 1);
      if (Count < 1)
      {
        goto LABEL_21;
      }

      v47 = Count;
      v48 = v3;
      for (i = 0; i != v47; v7 = __OFSUB__(v47, i))
      {
        v50 = ABMultiValueCopyLabelAtIndex(v10, i);
        v51 = [*(v6 + 5) isEqualToString:v50];

        if (v51)
        {
          IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(v10, i);
          v66 = -1;
          v3 = v48;
          if (i < 0)
          {
            goto LABEL_122;
          }

LABEL_102:
          IndexForIdentifier = i;
LABEL_103:
          v18 = ABCopyPreferredNameForPerson(v13);
          if ([(__CFString *)v18 isEqualToString:*(v6 + 6)])
          {

            v18 = 0;
          }

          v5 = &OBJC_IVAR___ABVCardLexer__length;
          v52 = IndexForIdentifier;
          v19 = ABMultiValueCopyValueAtIndex(v10, IndexForIdentifier);
          if ([v19 isEqualToString:*(v6 + 2)])
          {

            v19 = 0;
          }

          v53 = ABMultiValueCopyLabelAtIndex(v10, v52);
          v17 = v53;
          if (*(v6 + 5) && ![(__CFString *)v53 isEqualToString:?])
          {
            v20 = 0;
            if (!v10)
            {
              goto LABEL_112;
            }
          }

          else
          {

            v20 = 0;
            v17 = 0;
            if (!v10)
            {
              goto LABEL_112;
            }
          }

          goto LABEL_123;
        }

        ++i;
        IndexForIdentifier = -1;
      }

      v3 = v48;
LABEL_22:
      v5 = &OBJC_IVAR___ABVCardLexer__length;
LABEL_23:
      if (!*(v6 + 2))
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 1;
        v66 = -1;
        IdentifierAtIndex = -1;
        if (!v10)
        {
          goto LABEL_112;
        }

        goto LABEL_123;
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (!v3 || !*(v6 + 2))
      {
        goto LABEL_124;
      }

      v70 = 0;
      if ([v6 property] == kABPersonPhoneProperty)
      {
        v13 = ABCCopyArrayOfUIDsMatchingPhoneNumberWithCountryAndHint(v3, *(v6 + 2), 0, &v70);
        goto LABEL_37;
      }

      v22 = [v6 property];
      v7 = __OFSUB__(v22, kABPersonEmailProperty);
      if (v22 == kABPersonEmailProperty)
      {
        v68 = 0;
        v69 = 0;
        v13 = ABCCopyArrayOfUIDsMatchingEmailAddressIncludingLabels(v3, *(v6 + 2), &v68, &v69);
        if (v68)
        {
          CFRelease(v68);
        }

        if (v69)
        {
          CFRelease(v69);
        }

LABEL_37:
        if (v13)
        {
          v65 = CFArrayGetCount(v13);
          if (v70)
          {
            v63 = CFArrayGetCount(v70);
          }

          else
          {
            v63 = 0;
          }

          v59 = IndexForIdentifier;
          if (v65 >= 1)
          {
            v24 = 0;
            v62 = 0;
            v67 = 0;
            v25 = 0;
            v26 = -1;
            v66 = -1;
            v60 = -1;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v13, v24);
              v28 = v3;
              v29 = ABAddressBookGetPersonWithRecordID(v3, ValueAtIndex);
              if (!v29)
              {
                goto LABEL_74;
              }

              v30 = v29;
              if (!v25)
              {
                v25 = v29;
                v26 = ValueAtIndex;
              }

              if (v63 <= v24)
              {
                v31 = 0;
              }

              else
              {
                v31 = CFArrayGetValueAtIndex(v70, v24);
              }

              v32 = ABCopyPreferredNameForPerson(v30);
              if (v32)
              {
                v33 = v32;
                if (*(v6 + 6))
                {
                  v34 = [(__CFString *)v32 isEqualToString:?];
                  v35 = v67;
                  if (v34)
                  {
                    v35 = v30;
                  }

                  v67 = v35;
                  v36 = v66;
                  if (v34)
                  {
                    v36 = ValueAtIndex;
                  }

                  v66 = v36;
                }

                CFRelease(v33);
              }

              if (!v67 && v31 && v31 != v61)
              {
                break;
              }

              if (!v31)
              {
                goto LABEL_74;
              }

              v3 = v28;
              if (v67 && v62 == v67)
              {
                goto LABEL_78;
              }

LABEL_75:
              if (v65 == ++v24)
              {
                goto LABEL_78;
              }
            }

            if (*(v6 + 5))
            {
              v37 = [v31 isEqualToString:?];
              v67 = 0;
              v38 = v62;
              if (v37)
              {
                v38 = v30;
              }

              v62 = v38;
              v39 = v60;
              if (v37)
              {
                v39 = ValueAtIndex;
              }

              v60 = v39;
            }

            else
            {
              v67 = 0;
            }

LABEL_74:
            v3 = v28;
            goto LABEL_75;
          }

          v25 = 0;
          v67 = 0;
          v62 = 0;
          v60 = -1;
          v66 = -1;
          v26 = -1;
LABEL_78:
          CFRelease(v13);
          if (v70)
          {
            CFRelease(v70);
          }

          IndexForIdentifier = v59;
          v40 = v67;
          if ((v67 || (v40 = v62, v66 = v60, v62) || (v40 = v25, v66 = v26, v25)) && (v13 = v40, (v41 = ABRecordCopyValue(v40, [v6 property])) != 0))
          {
            v23 = v41;
            v42 = [v6 property];
            v43 = *(v6 + 2);
            v4 = v57;
            if (v42 == kABPersonPhoneProperty)
            {
              FirstIndexOfValueWithCallback = ABCMultiValueGetFirstIndexOfValueWithCallback(v23, v43, _ABFavoritesPhoneNumbersEqualCallback);
            }

            else
            {
              FirstIndexOfValueWithCallback = ABCMultiValueGetFirstIndexOfValue(v23, v43);
            }

            v45 = FirstIndexOfValueWithCallback;
            if (FirstIndexOfValueWithCallback < 0)
            {
              v10 = 0;
              v13 = 0;
              IdentifierAtIndex = -1;
              v66 = -1;
            }

            else
            {
              IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(v23, FirstIndexOfValueWithCallback);
              v10 = CFRetain(v23);
              IndexForIdentifier = v45;
            }

LABEL_100:
            CFRelease(v23);
          }

          else
          {
            v10 = 0;
            v13 = 0;
            IdentifierAtIndex = -1;
            v66 = -1;
            v4 = v57;
          }
        }

        else
        {
          v10 = 0;
          v23 = v70;
          IdentifierAtIndex = -1;
          v66 = -1;
          if (v70)
          {
            goto LABEL_100;
          }
        }
      }

      else
      {
        v10 = 0;
        v13 = 0;
        IdentifierAtIndex = -1;
        v66 = -1;
      }

      i = IndexForIdentifier;
      if ((IndexForIdentifier & 0x8000000000000000) == 0)
      {
        goto LABEL_102;
      }

LABEL_122:
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 1;
      v5 = &OBJC_IVAR___ABVCardLexer__length;
      if (!v10)
      {
LABEL_112:
        if (!v20)
        {
          goto LABEL_113;
        }

        goto LABEL_124;
      }

LABEL_123:
      CFRelease(v10);
      if ((v20 & 1) == 0)
      {
LABEL_113:
        v55 = (IdentifierAtIndex & v66) < 0 == v7 || (v19 | v18 | v17) != 0;
        if ((v55 | v64))
        {
          v56 = objc_alloc_init(ABFavoritesLookupChangeRecord);
          v56->identifier = IdentifierAtIndex;
          v56->uid = v66;
          v56->value = v19;
          v56->name = &v18->isa;
          v56->label = &v17->isa;
          v56->abDatabaseUUID = v4;
          [v6 performSelectorOnMainThread:sel__lookupChanged_ withObject:v56 waitUntilDone:0];
        }

        goto LABEL_125;
      }

LABEL_124:
      [v6 performSelectorOnMainThread:sel__lookupNotFound withObject:0 waitUntilDone:{0, v57}];
LABEL_125:

      [*(v5 + 265) lock];
      if (CFArrayGetCount(__LookupQueue) <= 0)
      {
        goto LABEL_126;
      }
    }

    if (*(v6 + 5))
    {
      goto LABEL_98;
    }

LABEL_90:
    if (!v15)
    {
LABEL_98:

      v66 = -1;
      IdentifierAtIndex = -1;
      goto LABEL_103;
    }

    goto LABEL_91;
  }

LABEL_126:
  __LookupQueueRunning = 0;
  [*(v5 + 265) unlock];
LABEL_127:
  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)_queueLookup
{
  v3 = __LookupQueueLock;
  if (!__LookupQueueLock)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    __LookupQueueLock = v3;
  }

  [v3 lock];
  Mutable = __LookupQueue;
  if (!__LookupQueue)
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    __LookupQueue = Mutable;
  }

  CFArrayAppendValue(Mutable, self);
  if ((__LookupQueueRunning & 1) == 0)
  {
    __LookupQueueRunning = 1;
    [MEMORY[0x1E696AF00] detachNewThreadSelector:sel__runLookup toTarget:objc_opt_class() withObject:0];
  }

  v5 = __LookupQueueLock;

  [v5 unlock];
}

- (void)_unqueueLookup
{
  if (__LookupQueueRunning == 1)
  {
    [__LookupQueueLock lock];
    [__LookupQueue removeObject:self];
    v4 = __LookupQueueLock;

    [v4 unlock];
  }
}

- (void)_postEntryChanged
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];

  [v3 postNotificationName:@"CNFavoritesEntryChangedNotification" object:self userInfo:0];
}

- (void)_lookupNotFound
{
  if (!self->_label && !self->_name && self->_abUid < 0 && self->_abIdentifier < 0)
  {
    return;
  }

  abUid = self->_abUid;
  if ((abUid & 0x80000000) == 0)
  {
    self->_abUid = -1;
  }

  if (self->_abIdentifier < 0)
  {
    p_abDatabaseUUID = &self->_abDatabaseUUID;
    abDatabaseUUID = self->_abDatabaseUUID;
    if (!abDatabaseUUID)
    {
      if (abUid < 0)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    p_abDatabaseUUID = &self->_abDatabaseUUID;
    abDatabaseUUID = self->_abDatabaseUUID;
    self->_abIdentifier = -1;
    if (!abDatabaseUUID)
    {
      goto LABEL_12;
    }
  }

  *p_abDatabaseUUID = 0;
LABEL_12:
  *(self + 32) |= 1u;

  [(ABFavoritesEntry *)self _postEntryChanged];
}

- (void)_lookupChanged:(id)a3
{
  v5 = *(a3 + 2);
  if ((v5 & 0x80000000) == 0)
  {
    self->_abIdentifier = v5;
  }

  v6 = *(a3 + 3);
  if (v6 < 0)
  {
    v8 = 0;
    abUid = 0xFFFFFFFFLL;
  }

  else
  {
    abUid = self->_abUid;
    self->_abUid = v6;
    v8 = abUid >> 31;
  }

  if (*(a3 + 2))
  {

    self->_value = *(a3 + 2);
  }

  if (*(a3 + 3))
  {

    self->_name = *(a3 + 3);
    v8 = 1;
  }

  if (*(a3 + 4))
  {

    self->_label = *(a3 + 4);
    v8 = 1;
  }

  if ((self->_abUid & 0x80000000) == 0)
  {

    self->_abDatabaseUUID = *(a3 + 5);
    if ((abUid & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    if ([+[ABFavoritesListManager entryIsDuplicateAndThusRemoved:"entryIsDuplicateAndThusRemoved:oldUid:"]
    {
      return;
    }

    goto LABEL_17;
  }

  if ((abUid & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v8)
  {
    [(ABFavoritesEntry *)self _postEntryChanged];
  }

  *(self + 32) |= 1u;
}

@end