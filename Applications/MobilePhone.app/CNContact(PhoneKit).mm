@interface CNContact(PhoneKit)
@end

@implementation CNContact(PhoneKit)

- (void)labeledValueForTelephoneNumber:()PhoneKit .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create a CNPhoneNumber for the specified telephone number (%@).", &v2, 0xCu);
}

@end