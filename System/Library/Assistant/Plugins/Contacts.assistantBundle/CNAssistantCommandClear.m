@interface CNAssistantCommandClear
- (CNContactStore)contactStore;
- (void)clearAceDomainObjects;
@end

@implementation CNAssistantCommandClear

- (void)clearAceDomainObjects
{
  if ((objc_msgSend_removeAllUpdates(CNAssistantCache, a2, v2) & 1) == 0)
  {
    v3 = *MEMORY[0x277CEF0D0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
    {
      sub_2334BC1A8(v3);
    }
  }
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

@end