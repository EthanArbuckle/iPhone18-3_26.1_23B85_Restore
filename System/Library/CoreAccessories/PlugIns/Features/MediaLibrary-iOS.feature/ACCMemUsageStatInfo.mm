@interface ACCMemUsageStatInfo
- (ACCMemUsageStatInfo)init;
- (ACCMemUsageStatInfo)initWithName:(id)a3;
- (ACCMemUsageStatInfo)initWithName:(id)a3 andInfo:(id)a4;
- (double)timeIntervalSinceLastUpdate;
- (double)timeIntervalSinceStart;
- (id)description;
- (void)setInfo:(id)a3;
- (void)updateResident:(unint64_t)a3 virtualValue:(unint64_t)a4 physFootprintValue:(unint64_t)a5;
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

    v11 = [MEMORY[0x277CBEAA8] date];
    startTime = v3->_startTime;
    v3->_startTime = v11;

    lastUpdateTime = v3->_lastUpdateTime;
    v3->_lastUpdateTime = 0;
  }

  return v3;
}

- (ACCMemUsageStatInfo)initWithName:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = ACCMemUsageStatInfo;
  v6 = [(ACCMemUsageStatInfo *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = [ACCStatInfoAccumulator alloc];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-resident", v5];
    v10 = [(ACCStatInfoAccumulator *)v8 initWithName:v9];
    residentMem = v7->_residentMem;
    v7->_residentMem = v10;

    v12 = [ACCStatInfoAccumulator alloc];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-virtual", v5];
    v14 = [(ACCStatInfoAccumulator *)v12 initWithName:v13];
    virtualMem = v7->_virtualMem;
    v7->_virtualMem = v14;

    v16 = [ACCStatInfoAccumulator alloc];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-physFootprint", v5];
    v18 = [(ACCStatInfoAccumulator *)v16 initWithName:v17];
    physFootprintMem = v7->_physFootprintMem;
    v7->_physFootprintMem = v18;

    v20 = [MEMORY[0x277CBEAA8] date];
    startTime = v7->_startTime;
    v7->_startTime = v20;

    lastUpdateTime = v7->_lastUpdateTime;
    v7->_lastUpdateTime = 0;
  }

  return v7;
}

- (ACCMemUsageStatInfo)initWithName:(id)a3 andInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = ACCMemUsageStatInfo;
  v9 = [(ACCMemUsageStatInfo *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    v11 = [ACCStatInfoAccumulator alloc];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-resident", v7];
    v13 = [(ACCStatInfoAccumulator *)v11 initWithName:v12];
    residentMem = v10->_residentMem;
    v10->_residentMem = v13;

    v15 = [ACCStatInfoAccumulator alloc];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-virtual", v7];
    v17 = [(ACCStatInfoAccumulator *)v15 initWithName:v16];
    virtualMem = v10->_virtualMem;
    v10->_virtualMem = v17;

    v19 = [ACCStatInfoAccumulator alloc];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-physFootprint", v7];
    v21 = [(ACCStatInfoAccumulator *)v19 initWithName:v20];
    physFootprintMem = v10->_physFootprintMem;
    v10->_physFootprintMem = v21;

    v23 = [MEMORY[0x277CBEAA8] date];
    startTime = v10->_startTime;
    v10->_startTime = v23;

    lastUpdateTime = v10->_lastUpdateTime;
    v10->_lastUpdateTime = 0;

    [(ACCMemUsageStatInfo *)v10 setInfo:v8];
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CBEAA8] date];
  name = &stru_2848E72C8;
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
  [v3 timeIntervalSince1970];
  v19 = v7;
  [v3 timeIntervalSinceDate:self->_startTime];
  v18 = v8;
  [v3 timeIntervalSinceDate:self->_lastUpdateTime];
  v17 = v9;
  v16 = [(ACCStatInfoAccumulator *)self->_residentMem start];
  v15 = [(ACCStatInfoAccumulator *)self->_residentMem start]/ 1000000.0;
  v14 = [(ACCStatInfoAccumulator *)self->_residentMem last];
  v13 = [(ACCStatInfoAccumulator *)self->_residentMem last]/ 1000000.0;
  v12 = [(ACCStatInfoAccumulator *)self->_residentMem max];
  v10 = [v23 stringWithFormat:@"  ACCMemUsageStatInfo:%@ startTime=%f, lastUpdateTime=%f, curTime=%f, sinceStart=%f, sinceLast=%f \n         resident: (start:%10llu / %8.3fM, last:%10llu / %8.3fM, max:%10llu / %8.3fM, diff:%10llu / %8.3fM, avg:%10llu / %8.3fM) \n          virtual: (start:%10llu / %8.3fM, last:%10llu / %8.3fM, max:%10llu / %8.3fM, diff:%10llu / %8.3fM, avg:%10llu / %8.3fM) \n    physFootprint: (start:%10llu / %8.3fM, last:%10llu / %8.3fM, max:%10llu / %8.3fM, diff:%10llu / %8.3fM, avg:%10llu / %8.3fM) \n", v22, v21, v20, v19, v18, v17, v16, *&v15, v14, *&v13, v12, -[ACCStatInfoAccumulator max](self->_residentMem, "max") / 1000000.0, -[ACCStatInfoAccumulator max](self->_residentMem, "max") - -[ACCStatInfoAccumulator start](self->_residentMem, "start"), (-[ACCStatInfoAccumulator max](self->_residentMem, "max") - -[ACCStatInfoAccumulator start](self->_residentMem, "start")) / 1000000.0, -[ACCStatInfoAccumulator average](self->_residentMem, "average"), -[ACCStatInfoAccumulator average](self->_residentMem, "average") / 1000000.0, -[ACCStatInfoAccumulator start](self->_virtualMem, "start"), -[ACCStatInfoAccumulator start](self->_virtualMem, "start") / 1000000.0, -[ACCStatInfoAccumulator last](self->_virtualMem, "last"), -[ACCStatInfoAccumulator last](self->_virtualMem, "last") / 1000000.0, -[ACCStatInfoAccumulator max](self->_virtualMem, "max"), -[ACCStatInfoAccumulator max](self->_virtualMem, "max") / 1000000.0, -[ACCStatInfoAccumulator max](self->_virtualMem, "max") - -[ACCStatInfoAccumulator start](self->_virtualMem, "start"), (-[ACCStatInfoAccumulator max](self->_virtualMem, "max") - -[ACCStatInfoAccumulator start](self->_virtualMem, "start")) / 1000000.0, -[ACCStatInfoAccumulator average](self->_virtualMem, "average"), -[ACCStatInfoAccumulator average](self->_virtualMem, "average") / 1000000.0, -[ACCStatInfoAccumulator start](self->_physFootprintMem, "start"), -[ACCStatInfoAccumulator start](self->_physFootprintMem, "start") / 1000000.0, -[ACCStatInfoAccumulator last](self->_physFootprintMem, "last"), -[ACCStatInfoAccumulator last](self->_physFootprintMem, "last") / 1000000.0, -[ACCStatInfoAccumulator max](self->_physFootprintMem, "max"), -[ACCStatInfoAccumulator max](self->_physFootprintMem, "max") / 1000000.0, -[ACCStatInfoAccumulator max](self->_physFootprintMem, "max") - -[ACCStatInfoAccumulator start](self->_physFootprintMem, "start"), (-[ACCStatInfoAccumulator max](self->_physFootprintMem, "max") - -[ACCStatInfoAccumulator start](self->_physFootprintMem, "start")) / 1000000.0, -[ACCStatInfoAccumulator average](self->_physFootprintMem, "average"), -[ACCStatInfoAccumulator average](self->_physFootprintMem, "average") / 1000000.0];

  return v10;
}

- (void)setInfo:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  lastUpdateTime = self->_lastUpdateTime;
  self->_lastUpdateTime = v6;

  [(ACCStatInfoAccumulator *)self->_residentMem reset];
  residentMem = self->_residentMem;
  v9 = [v5 residentMem];
  [(ACCStatInfoAccumulator *)residentMem set:v9];

  [(ACCStatInfoAccumulator *)self->_virtualMem reset];
  virtualMem = self->_virtualMem;
  v11 = [v5 virtualMem];
  [(ACCStatInfoAccumulator *)virtualMem set:v11];

  [(ACCStatInfoAccumulator *)self->_physFootprintMem reset];
  physFootprintMem = self->_physFootprintMem;
  v13 = [v5 physFootprintMem];

  [(ACCStatInfoAccumulator *)physFootprintMem set:v13];
}

- (void)updateResident:(unint64_t)a3 virtualValue:(unint64_t)a4 physFootprintValue:(unint64_t)a5
{
  v9 = [MEMORY[0x277CBEAA8] date];
  lastUpdateTime = self->_lastUpdateTime;
  self->_lastUpdateTime = v9;

  [(ACCStatInfoAccumulator *)self->_residentMem add:a3];
  [(ACCStatInfoAccumulator *)self->_virtualMem add:a4];
  physFootprintMem = self->_physFootprintMem;

  [(ACCStatInfoAccumulator *)physFootprintMem add:a5];
}

- (double)timeIntervalSinceStart
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:self->_startTime];
  v5 = v4;

  return v5;
}

- (double)timeIntervalSinceLastUpdate
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:self->_lastUpdateTime];
  v5 = v4;

  return v5;
}

@end