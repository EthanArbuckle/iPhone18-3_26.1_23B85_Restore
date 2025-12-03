@interface ACXApplicationStatus
- (ACXApplicationStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setInstallStatusWithGizmoStatus:(unint64_t)status;
@end

@implementation ACXApplicationStatus

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  installStatus = self->_installStatus;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:installStatus];
  [coderCopy encodeObject:v7 forKey:@"installStatus"];

  [coderCopy encodeObject:self->_lastInstallationError forKey:@"lastInstallationError"];
  [coderCopy encodeObject:self->_uniqueInstallID forKey:@"uniqueInstallID"];
  [coderCopy encodeInteger:self->_watchKitCompatibility forKey:@"watchKitCompatibility"];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_architectureCompatibility];
  [coderCopy encodeObject:v8 forKey:@"architectureCompatibility"];
}

- (ACXApplicationStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ACXApplicationStatus;
  v5 = [(ACXApplicationStatus *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installStatus"];
    v5->_installStatus = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastInstallationError"];
    lastInstallationError = v5->_lastInstallationError;
    v5->_lastInstallationError = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueInstallID"];
    uniqueInstallID = v5->_uniqueInstallID;
    v5->_uniqueInstallID = v9;

    v5->_watchKitCompatibility = [coderCopy decodeIntegerForKey:@"watchKitCompatibility"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"architectureCompatibility"];
    v5->_architectureCompatibility = [v11 unsignedIntegerValue];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v4[1] = [(ACXApplicationStatus *)self installStatus];
  lastInstallationError = [(ACXApplicationStatus *)self lastInstallationError];
  v6 = v4[2];
  v4[2] = lastInstallationError;

  uniqueInstallID = [(ACXApplicationStatus *)self uniqueInstallID];
  v8 = v4[3];
  v4[3] = uniqueInstallID;

  v4[4] = [(ACXApplicationStatus *)self watchKitCompatibility];
  v4[5] = [(ACXApplicationStatus *)self architectureCompatibility];
  return v4;
}

- (void)setInstallStatusWithGizmoStatus:(unint64_t)status
{
  if (status - 1 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_23FF3BC00[status - 1];
  }

  [(ACXApplicationStatus *)self setInstallStatus:v3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  installStatus = [(ACXApplicationStatus *)self installStatus];
  lastInstallationError = [(ACXApplicationStatus *)self lastInstallationError];
  uniqueInstallID = [(ACXApplicationStatus *)self uniqueInstallID];
  v9 = [v3 stringWithFormat:@"<%@<%p> installStatus=%lu lastError=%@ uniqueID=%@ wkCompatibility=%ld archCompatibility=%lu>", v5, self, installStatus, lastInstallationError, uniqueInstallID, -[ACXApplicationStatus watchKitCompatibility](self, "watchKitCompatibility"), -[ACXApplicationStatus architectureCompatibility](self, "architectureCompatibility")];

  return v9;
}

@end