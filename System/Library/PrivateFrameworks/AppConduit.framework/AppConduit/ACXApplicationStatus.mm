@interface ACXApplicationStatus
- (ACXApplicationStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setInstallStatusWithGizmoStatus:(unint64_t)a3;
@end

@implementation ACXApplicationStatus

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  installStatus = self->_installStatus;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:installStatus];
  [v6 encodeObject:v7 forKey:@"installStatus"];

  [v6 encodeObject:self->_lastInstallationError forKey:@"lastInstallationError"];
  [v6 encodeObject:self->_uniqueInstallID forKey:@"uniqueInstallID"];
  [v6 encodeInteger:self->_watchKitCompatibility forKey:@"watchKitCompatibility"];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_architectureCompatibility];
  [v6 encodeObject:v8 forKey:@"architectureCompatibility"];
}

- (ACXApplicationStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ACXApplicationStatus;
  v5 = [(ACXApplicationStatus *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installStatus"];
    v5->_installStatus = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastInstallationError"];
    lastInstallationError = v5->_lastInstallationError;
    v5->_lastInstallationError = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueInstallID"];
    uniqueInstallID = v5->_uniqueInstallID;
    v5->_uniqueInstallID = v9;

    v5->_watchKitCompatibility = [v4 decodeIntegerForKey:@"watchKitCompatibility"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"architectureCompatibility"];
    v5->_architectureCompatibility = [v11 unsignedIntegerValue];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4[1] = [(ACXApplicationStatus *)self installStatus];
  v5 = [(ACXApplicationStatus *)self lastInstallationError];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(ACXApplicationStatus *)self uniqueInstallID];
  v8 = v4[3];
  v4[3] = v7;

  v4[4] = [(ACXApplicationStatus *)self watchKitCompatibility];
  v4[5] = [(ACXApplicationStatus *)self architectureCompatibility];
  return v4;
}

- (void)setInstallStatusWithGizmoStatus:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_23FF3BC00[a3 - 1];
  }

  [(ACXApplicationStatus *)self setInstallStatus:v3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACXApplicationStatus *)self installStatus];
  v7 = [(ACXApplicationStatus *)self lastInstallationError];
  v8 = [(ACXApplicationStatus *)self uniqueInstallID];
  v9 = [v3 stringWithFormat:@"<%@<%p> installStatus=%lu lastError=%@ uniqueID=%@ wkCompatibility=%ld archCompatibility=%lu>", v5, self, v6, v7, v8, -[ACXApplicationStatus watchKitCompatibility](self, "watchKitCompatibility"), -[ACXApplicationStatus architectureCompatibility](self, "architectureCompatibility")];

  return v9;
}

@end