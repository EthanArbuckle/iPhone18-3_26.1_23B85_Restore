@interface ABSVCardRecord
- (ABSVCardRecord)initWithRecord:(void *)a3;
- (ABSVCardRecord)initWithVCardRepresentation:(id)a3;
- (void)dealloc;
@end

@implementation ABSVCardRecord

- (ABSVCardRecord)initWithVCardRepresentation:(id)a3
{
  v10 = 0;
  v4 = [MEMORY[0x277CBDAC8] contactsWithData:a3 error:&v10];
  v5 = v10;
  if (!v4)
  {
    v6 = +[ABSLog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ABSVCardRecord *)v5 initWithVCardRepresentation:v6];
    }

    goto LABEL_8;
  }

  if ([v4 count] != 1)
  {
    v6 = +[ABSLog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ABSVCardRecord initWithVCardRepresentation:v6];
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v6 = [v4 firstObject];
  v7 = [ABSPublicABCNCompatibility publicABPersonFromContact:v6 contactStore:0 publicAddressBook:0];
LABEL_9:

  v8 = [(ABSVCardRecord *)self initWithRecord:v7];
  return v8;
}

- (ABSVCardRecord)initWithRecord:(void *)a3
{
  v8.receiver = self;
  v8.super_class = ABSVCardRecord;
  v4 = [(ABSVCardRecord *)&v8 init];
  if (v4)
  {
    if (a3)
    {
      v5 = CFRetain(a3);
    }

    else
    {
      v5 = 0;
    }

    v4->_record = v5;
    v6 = v4;
  }

  return v4;
}

- (void)dealloc
{
  record = self->_record;
  if (record)
  {
    CFRelease(record);
  }

  v4.receiver = self;
  v4.super_class = ABSVCardRecord;
  [(ABSVCardRecord *)&v4 dealloc];
}

- (void)initWithVCardRepresentation:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_236A49000, a2, OS_LOG_TYPE_ERROR, "Error parsing vcard: %{public}@", &v2, 0xCu);
}

@end