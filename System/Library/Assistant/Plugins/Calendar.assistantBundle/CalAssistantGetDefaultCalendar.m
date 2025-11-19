@interface CalAssistantGetDefaultCalendar
- (id)eventStore;
- (void)performWithCompletion:(id)a3;
- (void)setEventStore:(id)a3;
@end

@implementation CalAssistantGetDefaultCalendar

- (id)eventStore
{
  eventStore = self->_eventStore;
  if (!eventStore)
  {
    v5 = objc_msgSend__ca_eventStoreWithError_(MEMORY[0x277CC5A40], a2, 0, v2);
    v6 = self->_eventStore;
    self->_eventStore = v5;

    eventStore = self->_eventStore;
  }

  return eventStore;
}

- (void)setEventStore:(id)a3
{
  v5 = a3;
  if (self->_eventStore != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_eventStore, a3);
    v5 = v6;
  }
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  sub_2334B11EC();
  v8 = objc_msgSend_eventStore(self, v5, v6, v7);
  v12 = objc_msgSend_acquireDefaultCalendarForNewEvents(v8, v9, v10, v11);

  v16 = objc_msgSend_source(v12, v13, v14, v15);
  v20 = objc_msgSend_externalID(v16, v17, v18, v19);
  v24 = objc_msgSend_title(v16, v21, v22, v23);
  v28 = objc_msgSend_sourceType(v16, v25, v26, v27) != 0;
  v29 = objc_alloc_init(MEMORY[0x277D471E0]);
  objc_msgSend_setAccountIdentifier_(v29, v30, v20, v31);
  v34 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v32, v28, v33);
  objc_msgSend_setRemote_(v29, v35, v34, v36);

  objc_msgSend_setStrict_(v29, v37, 0, v38);
  objc_msgSend_setAccountName_(v29, v39, v24, v40);
  v41 = objc_alloc(MEMORY[0x277D471C0]);
  v48 = objc_msgSend_initWithAceCalendarSource_(v41, v42, v29, v43);
  v47 = objc_msgSend_dictionary(v48, v44, v45, v46);
  v4[2](v4, v47);
}

@end