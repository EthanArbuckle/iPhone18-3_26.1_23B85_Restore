@interface ACCMemUsageStatInfo
- (ACCMemUsageStatInfo)init;
- (ACCMemUsageStatInfo)initWithName:(id)name;
- (ACCMemUsageStatInfo)initWithName:(id)name andInfo:(id)info;
- (double)timeIntervalSinceLastUpdate;
- (double)timeIntervalSinceStart;
- (id)description;
- (void)setInfo:(id)info;
- (void)updateResident:(unint64_t)resident virtualValue:(unint64_t)value physFootprintValue:(unint64_t)footprintValue;
@end

@implementation ACCMemUsageStatInfo

- (ACCMemUsageStatInfo)init
{
  v15.receiver = self;
  v15.super_class = ACCMemUsageStatInfo;
  v2 = [(ACCMemUsageStatInfo *)&v15 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = 0;

    v5 = [[ACCStatInfoAccumulator alloc] initWithName:@"resident"];
    residentMem = v3->_residentMem;
    v3->_residentMem = v5;

    v7 = [[ACCStatInfoAccumulator alloc] initWithName:@"virtual"];
    virtualMem = v3->_virtualMem;
    v3->_virtualMem = v7;

    v9 = [[ACCStatInfoAccumulator alloc] initWithName:@"physFootprint"];
    physFootprintMem = v3->_physFootprintMem;
    v3->_physFootprintMem = v9;

    date = [MEMORY[0x277CBEAA8] date];
    startTime = v3->_startTime;
    v3->_startTime = date;

    lastUpdateTime = v3->_lastUpdateTime;
    v3->_lastUpdateTime = 0;
  }

  return v3;
}

- (ACCMemUsageStatInfo)initWithName:(id)name
{
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = ACCMemUsageStatInfo;
  v6 = [(ACCMemUsageStatInfo *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v8 = [ACCStatInfoAccumulator alloc];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-resident", nameCopy];
    v10 = [(ACCStatInfoAccumulator *)v8 initWithName:nameCopy];
    residentMem = v7->_residentMem;
    v7->_residentMem = v10;

    v12 = [ACCStatInfoAccumulator alloc];
    nameCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-virtual", nameCopy];
    v14 = [(ACCStatInfoAccumulator *)v12 initWithName:nameCopy2];
    virtualMem = v7->_virtualMem;
    v7->_virtualMem = v14;

    v16 = [ACCStatInfoAccumulator alloc];
    nameCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-physFootprint", nameCopy];
    v18 = [(ACCStatInfoAccumulator *)v16 initWithName:nameCopy3];
    physFootprintMem = v7->_physFootprintMem;
    v7->_physFootprintMem = v18;

    date = [MEMORY[0x277CBEAA8] date];
    startTime = v7->_startTime;
    v7->_startTime = date;

    lastUpdateTime = v7->_lastUpdateTime;
    v7->_lastUpdateTime = 0;
  }

  return v7;
}

- (ACCMemUsageStatInfo)initWithName:(id)name andInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v27.receiver = self;
  v27.super_class = ACCMemUsageStatInfo;
  v9 = [(ACCMemUsageStatInfo *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v11 = [ACCStatInfoAccumulator alloc];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-resident", nameCopy];
    v13 = [(ACCStatInfoAccumulator *)v11 initWithName:nameCopy];
    residentMem = v10->_residentMem;
    v10->_residentMem = v13;

    v15 = [ACCStatInfoAccumulator alloc];
    nameCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-virtual", nameCopy];
    v17 = [(ACCStatInfoAccumulator *)v15 initWithName:nameCopy2];
    virtualMem = v10->_virtualMem;
    v10->_virtualMem = v17;

    v19 = [ACCStatInfoAccumulator alloc];
    nameCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-physFootprint", nameCopy];
    v21 = [(ACCStatInfoAccumulator *)v19 initWithName:nameCopy3];
    physFootprintMem = v10->_physFootprintMem;
    v10->_physFootprintMem = v21;

    date = [MEMORY[0x277CBEAA8] date];
    startTime = v10->_startTime;
    v10->_startTime = date;

    lastUpdateTime = v10->_lastUpdateTime;
    v10->_lastUpdateTime = 0;

    [(ACCMemUsageStatInfo *)v10 setInfo:infoCopy];
  }

  return v10;
}

- (id)description
{
  date = [MEMORY[0x277CBEAA8] date];
  name = &stru_2848EA190;
  if (self->_name)
  {
    name = self->_name;
  }

  v22 = name;
  v23 = MEMORY[0x277CCACA8];
  [(NSDate *)self->_startTime timeIntervalSince1970];
  v21 = v5;
  [(NSDate *)self->_lastUpdateTime timeIntervalSince1970];
  v20 = v6;
  [date timeIntervalSince1970];
  v19 = v7;
  [date timeIntervalSinceDate:self->_startTime];
  v18 = v8;
  [date timeIntervalSinceDate:self->_lastUpdateTime];
  v17 = v9;
  start = [(ACCStatInfoAccumulator *)self->_residentMem start];
  v15 = [(ACCStatInfoAccumulator *)self->_residentMem start]/ 1000000.0;
  last = [(ACCStatInfoAccumulator *)self->_residentMem last];
  v13 = [(ACCStatInfoAccumulator *)self->_residentMem last]/ 1000000.0;
  v12 = [(ACCStatInfoAccumulator *)self->_residentMem max];
  v10 = [v23 stringWithFormat:@"  ACCMemUsageStatInfo:%@ startTime=%f, lastUpdateTime=%f, curTime=%f, sinceStart=%f, sinceLast=%f \n         resident: (start:%10llu / %8.3fM, last:%10llu / %8.3fM, max:%10llu / %8.3fM, diff:%10llu / %8.3fM, avg:%10llu / %8.3fM) \n          virtual: (start:%10llu / %8.3fM, last:%10llu / %8.3fM, max:%10llu / %8.3fM, diff:%10llu / %8.3fM, avg:%10llu / %8.3fM) \n    physFootprint: (start:%10llu / %8.3fM, last:%10llu / %8.3fM, max:%10llu / %8.3fM, diff:%10llu / %8.3fM, avg:%10llu / %8.3fM) \n", v22, v21, v20, v19, v18, v17, start, *&v15, last, *&v13, v12, -[ACCStatInfoAccumulator max](self->_residentMem, "max") / 1000000.0, -[ACCStatInfoAccumulator max](self->_residentMem, "max") - -[ACCStatInfoAccumulator start](self->_residentMem, "start"), (-[ACCStatInfoAccumulator max](self->_residentMem, "max") - -[ACCStatInfoAccumulator start](self->_residentMem, "start")) / 1000000.0, -[ACCStatInfoAccumulator average](self->_residentMem, "average"), -[ACCStatInfoAccumulator average](self->_residentMem, "average") / 1000000.0, -[ACCStatInfoAccumulator start](self->_virtualMem, "start"), -[ACCStatInfoAccumulator start](self->_virtualMem, "start") / 1000000.0, -[ACCStatInfoAccumulator last](self->_virtualMem, "last"), -[ACCStatInfoAccumulator last](self->_virtualMem, "last") / 1000000.0, -[ACCStatInfoAccumulator max](self->_virtualMem, "max"), -[ACCStatInfoAccumulator max](self->_virtualMem, "max") / 1000000.0, -[ACCStatInfoAccumulator max](self->_virtualMem, "max") - -[ACCStatInfoAccumulator start](self->_virtualMem, "start"), (-[ACCStatInfoAccumulator max](self->_virtualMem, "max") - -[ACCStatInfoAccumulator start](self->_virtualMem, "start")) / 1000000.0, -[ACCStatInfoAccumulator average](self->_virtualMem, "average"), -[ACCStatInfoAccumulator average](self->_virtualMem, "average") / 1000000.0, -[ACCStatInfoAccumulator start](self->_physFootprintMem, "start"), -[ACCStatInfoAccumulator start](self->_physFootprintMem, "start") / 1000000.0, -[ACCStatInfoAccumulator last](self->_physFootprintMem, "last"), -[ACCStatInfoAccumulator last](self->_physFootprintMem, "last") / 1000000.0, -[ACCStatInfoAccumulator max](self->_physFootprintMem, "max"), -[ACCStatInfoAccumulator max](self->_physFootprintMem, "max") / 1000000.0, -[ACCStatInfoAccumulator max](self->_physFootprintMem, "max") - -[ACCStatInfoAccumulator start](self->_physFootprintMem, "start"), (-[ACCStatInfoAccumulator max](self->_physFootprintMem, "max") - -[ACCStatInfoAccumulator start](self->_physFootprintMem, "start")) / 1000000.0, -[ACCStatInfoAccumulator average](self->_physFootprintMem, "average"), -[ACCStatInfoAccumulator average](self->_physFootprintMem, "average") / 1000000.0];

  return v10;
}

- (void)setInfo:(id)info
{
  v4 = MEMORY[0x277CBEAA8];
  infoCopy = info;
  date = [v4 date];
  lastUpdateTime = self->_lastUpdateTime;
  self->_lastUpdateTime = date;

  [(ACCStatInfoAccumulator *)self->_residentMem reset];
  residentMem = self->_residentMem;
  residentMem = [infoCopy residentMem];
  [(ACCStatInfoAccumulator *)residentMem set:residentMem];

  [(ACCStatInfoAccumulator *)self->_virtualMem reset];
  virtualMem = self->_virtualMem;
  virtualMem = [infoCopy virtualMem];
  [(ACCStatInfoAccumulator *)virtualMem set:virtualMem];

  [(ACCStatInfoAccumulator *)self->_physFootprintMem reset];
  physFootprintMem = self->_physFootprintMem;
  physFootprintMem = [infoCopy physFootprintMem];

  [(ACCStatInfoAccumulator *)physFootprintMem set:physFootprintMem];
}

- (void)updateResident:(unint64_t)resident virtualValue:(unint64_t)value physFootprintValue:(unint64_t)footprintValue
{
  date = [MEMORY[0x277CBEAA8] date];
  lastUpdateTime = self->_lastUpdateTime;
  self->_lastUpdateTime = date;

  [(ACCStatInfoAccumulator *)self->_residentMem add:resident];
  [(ACCStatInfoAccumulator *)self->_virtualMem add:value];
  physFootprintMem = self->_physFootprintMem;

  [(ACCStatInfoAccumulator *)physFootprintMem add:footprintValue];
}

- (double)timeIntervalSinceStart
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_startTime];
  v5 = v4;

  return v5;
}

- (double)timeIntervalSinceLastUpdate
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_lastUpdateTime];
  v5 = v4;

  return v5;
}

@end