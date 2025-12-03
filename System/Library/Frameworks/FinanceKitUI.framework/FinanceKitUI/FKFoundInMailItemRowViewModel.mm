@interface FKFoundInMailItemRowViewModel
- (FKFoundInMailItemRowViewModel)initWithMessageID:(id)d fromEmailAddress:(id)address dateSent:(id)sent fromDisplayName:(id)name subject:(id)subject deeplinkURL:(id)l orderDetails:(id)details;
- (NSString)rowSubjectText;
- (NSString)rowSubtitleText;
- (NSString)rowTitleText;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FKFoundInMailItemRowViewModel

- (FKFoundInMailItemRowViewModel)initWithMessageID:(id)d fromEmailAddress:(id)address dateSent:(id)sent fromDisplayName:(id)name subject:(id)subject deeplinkURL:(id)l orderDetails:(id)details
{
  dCopy = d;
  addressCopy = address;
  sentCopy = sent;
  nameCopy = name;
  subjectCopy = subject;
  lCopy = l;
  detailsCopy = details;
  v38.receiver = self;
  v38.super_class = FKFoundInMailItemRowViewModel;
  v22 = [(FKFoundInMailItemRowViewModel *)&v38 init];
  if (v22)
  {
    v23 = [dCopy copy];
    messageID = v22->_messageID;
    v22->_messageID = v23;

    v25 = [addressCopy copy];
    fromEmailAddress = v22->_fromEmailAddress;
    v22->_fromEmailAddress = v25;

    v27 = [sentCopy copy];
    dateSent = v22->_dateSent;
    v22->_dateSent = v27;

    v29 = [nameCopy copy];
    fromDisplayName = v22->_fromDisplayName;
    v22->_fromDisplayName = v29;

    v31 = [subjectCopy copy];
    subject = v22->_subject;
    v22->_subject = v31;

    v33 = [lCopy copy];
    deeplinkURL = v22->_deeplinkURL;
    v22->_deeplinkURL = v33;

    v35 = [detailsCopy copy];
    orderDetails = v22->_orderDetails;
    v22->_orderDetails = v35;
  }

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(NSString *)self->_messageID copy];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(NSString *)self->_fromEmailAddress copy];
  v8 = v4[5];
  v4[5] = v7;

  v9 = [(NSDate *)self->_dateSent copy];
  v10 = v4[6];
  v4[6] = v9;

  v11 = [(NSString *)self->_fromDisplayName copy];
  v12 = v4[7];
  v4[7] = v11;

  v13 = [(NSString *)self->_subject copy];
  v14 = v4[8];
  v4[8] = v13;

  v15 = [(NSURL *)self->_deeplinkURL copy];
  v16 = v4[9];
  v4[9] = v15;

  v17 = [(NSSet *)self->_orderDetails copy];
  v18 = v4[10];
  v4[10] = v17;

  return v4;
}

- (NSString)rowTitleText
{
  p_rowTitleText = &self->_rowTitleText;
  rowTitleText = self->_rowTitleText;
  if (!rowTitleText)
  {
    fromDisplayName = self->_fromDisplayName;
    if (!fromDisplayName)
    {
      fromDisplayName = self->_fromEmailAddress;
    }

    objc_storeStrong(&self->_rowTitleText, fromDisplayName);
    rowTitleText = *p_rowTitleText;
  }

  return rowTitleText;
}

- (NSString)rowSubjectText
{
  rowSubjectText = self->_rowSubjectText;
  p_rowSubjectText = &self->_rowSubjectText;
  v4 = rowSubjectText;
  if (!rowSubjectText)
  {
    objc_storeStrong(p_rowSubjectText, self->_subject);
    v4 = self->_rowSubjectText;
  }

  return v4;
}

- (NSString)rowSubtitleText
{
  v29 = *MEMORY[0x277D85DE8];
  rowSubtitleText = self->_rowSubtitleText;
  if (!rowSubtitleText)
  {
    if (self->_orderDetails)
    {
      array = [MEMORY[0x277CBEB18] array];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v5 = self->_orderDetails;
      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v25;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v24 + 1) + 8 * i);
            orderNumber = [v10 orderNumber];

            if (orderNumber)
            {
              orderNumber2 = [v10 orderNumber];
              [array addObject:orderNumber2];
            }
          }

          v7 = [(NSSet *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v7);
      }

      if ([array count])
      {
        [array sortUsingSelector:sel_compare_];
        v13 = [array componentsJoinedByString:{@", "}];
        v20 = FKUILocalizedStringWithFormat(@"EXTRACTED_ORDERS_ORDER_NUMBER_FORMAT", @"FinanceKitUI_Localizable", v14, v15, v16, v17, v18, v19, v13);
        v21 = self->_rowSubtitleText;
        self->_rowSubtitleText = v20;
      }

      rowSubtitleText = self->_rowSubtitleText;
    }

    else
    {
      rowSubtitleText = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return rowSubtitleText;
}

@end