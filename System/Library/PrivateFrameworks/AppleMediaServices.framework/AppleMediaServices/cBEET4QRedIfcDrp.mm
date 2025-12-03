@interface cBEET4QRedIfcDrp
- (cBEET4QRedIfcDrp)initWithEmailAddress:(id)address source:(unint64_t)source;
- (cBEET4QRedIfcDrp)initWithFirstName:(id)name lastName:(id)lastName source:(unint64_t)source;
- (cBEET4QRedIfcDrp)initWithFullName:(id)name source:(unint64_t)source;
- (cBEET4QRedIfcDrp)initWithPhoneNumber:(id)number source:(unint64_t)source;
- (cBEET4QRedIfcDrp)initWithSource:(unint64_t)source;
@end

@implementation cBEET4QRedIfcDrp

- (cBEET4QRedIfcDrp)initWithSource:(unint64_t)source
{
  v5.receiver = self;
  v5.super_class = cBEET4QRedIfcDrp;
  result = [(cBEET4QRedIfcDrp *)&v5 init];
  result->_source = source;
  return result;
}

- (cBEET4QRedIfcDrp)initWithEmailAddress:(id)address source:(unint64_t)source
{
  addressCopy = address;
  v7 = [(cBEET4QRedIfcDrp *)self initWithSource:source];
  emailAddress = v7->_emailAddress;
  v7->_emailAddress = addressCopy;

  return v7;
}

- (cBEET4QRedIfcDrp)initWithPhoneNumber:(id)number source:(unint64_t)source
{
  numberCopy = number;
  v7 = [(cBEET4QRedIfcDrp *)self initWithSource:source];
  phoneNumber = v7->_phoneNumber;
  v7->_phoneNumber = numberCopy;

  return v7;
}

- (cBEET4QRedIfcDrp)initWithFullName:(id)name source:(unint64_t)source
{
  nameCopy = name;
  v7 = [(cBEET4QRedIfcDrp *)self initWithSource:source];
  fullName = v7->_fullName;
  v7->_fullName = nameCopy;

  return v7;
}

- (cBEET4QRedIfcDrp)initWithFirstName:(id)name lastName:(id)lastName source:(unint64_t)source
{
  nameCopy = name;
  lastNameCopy = lastName;
  v10 = [(cBEET4QRedIfcDrp *)self initWithSource:source];
  firstName = v10->_firstName;
  v10->_firstName = nameCopy;
  v12 = nameCopy;

  lastName = v10->_lastName;
  v10->_lastName = lastNameCopy;

  return v10;
}

@end