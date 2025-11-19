@interface GKGoal
+ (GKGoal)goalToAlignWithAgents:(NSArray *)agents maxDistance:(float)maxDistance maxAngle:(float)maxAngle;
+ (GKGoal)goalToAvoidAgents:(NSArray *)agents maxPredictionTime:(NSTimeInterval)maxPredictionTime;
+ (GKGoal)goalToAvoidObstacles:(NSArray *)obstacles maxPredictionTime:(NSTimeInterval)maxPredictionTime;
+ (GKGoal)goalToCohereWithAgents:(NSArray *)agents maxDistance:(float)maxDistance maxAngle:(float)maxAngle;
+ (GKGoal)goalToFleeAgent:(GKAgent *)agent;
+ (GKGoal)goalToInterceptAgent:(GKAgent *)target maxPredictionTime:(NSTimeInterval)maxPredictionTime;
+ (GKGoal)goalToReachTargetSpeed:(float)targetSpeed;
+ (GKGoal)goalToSeekAgent:(GKAgent *)agent;
+ (GKGoal)goalToSeparateFromAgents:(NSArray *)agents maxDistance:(float)maxDistance maxAngle:(float)maxAngle;
+ (GKGoal)goalToStayOnPath:(GKPath *)path maxPredictionTime:(NSTimeInterval)maxPredictionTime;
+ (GKGoal)goalToWander:(float)speed;
- (GKGoal)init;
- (__n128)getForce:(uint64_t)a3 agent:(void *)a4;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initToAlignWithAgents:(id)a3 maxDistance:(float)a4 maxAngle:(float)a5;
- (id)initToAvoidAgents:(id)a3 maxPredictionTime:(double)a4;
- (id)initToAvoidObstacles:(id)a3 maxPredictionTime:(double)a4;
- (id)initToCohereWithAgents:(id)a3 maxDistance:(float)a4 maxAngle:(float)a5;
- (id)initToFleeAgent:(id)a3;
- (id)initToFollowPath:(id)a3 maxPredictionTime:(double)a4 forward:(BOOL)a5;
- (id)initToInterceptAgent:(id)a3 maxPredictionTime:(double)a4;
- (id)initToReachTargetSpeed:(float)a3;
- (id)initToSeekAgent:(id)a3;
- (id)initToSeparateFromAgents:(id)a3 maxDistance:(float)a4 maxAngle:(float)a5;
- (id)initToStayOnPath:(id)a3 maxPredictionTime:(double)a4;
- (id)initToWander:(float)a3;
@end

@implementation GKGoal

- (GKGoal)init
{
  v8.receiver = self;
  v8.super_class = GKGoal;
  v2 = [(GKGoal *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_type = 0;
    path = v2->_path;
    v2->_path = 0;

    obstacles = v3->_obstacles;
    v3->_obstacles = 0;

    agents = v3->_agents;
    v3->_agents = 0;
  }

  return v3;
}

+ (GKGoal)goalToSeekAgent:(GKAgent *)agent
{
  v3 = agent;
  v4 = [[GKGoal alloc] initToSeekAgent:v3];

  return v4;
}

- (id)initToSeekAgent:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GKGoal;
  v5 = [(GKGoal *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 1;
    v12[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    agents = v6->_agents;
    v6->_agents = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (GKGoal)goalToFleeAgent:(GKAgent *)agent
{
  v3 = agent;
  v4 = [[GKGoal alloc] initToFleeAgent:v3];

  return v4;
}

- (id)initToFleeAgent:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GKGoal;
  v5 = [(GKGoal *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 2;
    v12[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    agents = v6->_agents;
    v6->_agents = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (GKGoal)goalToAvoidObstacles:(NSArray *)obstacles maxPredictionTime:(NSTimeInterval)maxPredictionTime
{
  v5 = obstacles;
  v6 = [[GKGoal alloc] initToAvoidObstacles:v5 maxPredictionTime:maxPredictionTime];

  return v6;
}

- (id)initToAvoidObstacles:(id)a3 maxPredictionTime:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = GKGoal;
  v8 = [(GKGoal *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 3;
    objc_storeStrong(&v8->_obstacles, a3);
    v9[5] = a4;
  }

  return v9;
}

+ (GKGoal)goalToAvoidAgents:(NSArray *)agents maxPredictionTime:(NSTimeInterval)maxPredictionTime
{
  v5 = agents;
  v6 = [[GKGoal alloc] initToAvoidAgents:v5 maxPredictionTime:maxPredictionTime];

  return v6;
}

- (id)initToAvoidAgents:(id)a3 maxPredictionTime:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = GKGoal;
  v8 = [(GKGoal *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 4;
    objc_storeStrong(&v8->_agents, a3);
    v9[5] = a4;
  }

  return v9;
}

+ (GKGoal)goalToSeparateFromAgents:(NSArray *)agents maxDistance:(float)maxDistance maxAngle:(float)maxAngle
{
  v7 = agents;
  v8 = [GKGoal alloc];
  *&v9 = maxDistance;
  *&v10 = maxAngle;
  v11 = [(GKGoal *)v8 initToSeparateFromAgents:v7 maxDistance:v9 maxAngle:v10];

  return v11;
}

- (id)initToSeparateFromAgents:(id)a3 maxDistance:(float)a4 maxAngle:(float)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = GKGoal;
  v10 = [(GKGoal *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 5;
    objc_storeStrong(&v10->_agents, a3);
    v11[12] = a5;
    v11[13] = a4;
  }

  return v11;
}

+ (GKGoal)goalToAlignWithAgents:(NSArray *)agents maxDistance:(float)maxDistance maxAngle:(float)maxAngle
{
  v7 = agents;
  v8 = [GKGoal alloc];
  *&v9 = maxDistance;
  *&v10 = maxAngle;
  v11 = [(GKGoal *)v8 initToAlignWithAgents:v7 maxDistance:v9 maxAngle:v10];

  return v11;
}

- (id)initToAlignWithAgents:(id)a3 maxDistance:(float)a4 maxAngle:(float)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = GKGoal;
  v10 = [(GKGoal *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 6;
    objc_storeStrong(&v10->_agents, a3);
    v12 = fabsf(a5);
    if (v12 > 3.14159265)
    {
      v12 = 3.1416;
    }

    v11[12] = v12;
    v11[13] = a4;
  }

  return v11;
}

+ (GKGoal)goalToCohereWithAgents:(NSArray *)agents maxDistance:(float)maxDistance maxAngle:(float)maxAngle
{
  v7 = agents;
  v8 = [GKGoal alloc];
  *&v9 = maxDistance;
  *&v10 = maxAngle;
  v11 = [(GKGoal *)v8 initToCohereWithAgents:v7 maxDistance:v9 maxAngle:v10];

  return v11;
}

- (id)initToCohereWithAgents:(id)a3 maxDistance:(float)a4 maxAngle:(float)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = GKGoal;
  v10 = [(GKGoal *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 7;
    objc_storeStrong(&v10->_agents, a3);
    v11[12] = a5;
    v11[13] = a4;
  }

  return v11;
}

+ (GKGoal)goalToReachTargetSpeed:(float)targetSpeed
{
  v4 = [GKGoal alloc];
  *&v5 = targetSpeed;
  v6 = [(GKGoal *)v4 initToReachTargetSpeed:v5];

  return v6;
}

- (id)initToReachTargetSpeed:(float)a3
{
  v5.receiver = self;
  v5.super_class = GKGoal;
  result = [(GKGoal *)&v5 init];
  if (result)
  {
    *(result + 2) = 8;
    *(result + 14) = a3;
  }

  return result;
}

+ (GKGoal)goalToWander:(float)speed
{
  v4 = [GKGoal alloc];
  *&v5 = speed;
  v6 = [(GKGoal *)v4 initToWander:v5];

  return v6;
}

- (id)initToWander:(float)a3
{
  v5.receiver = self;
  v5.super_class = GKGoal;
  result = [(GKGoal *)&v5 init];
  if (result)
  {
    *(result + 2) = 9;
    *(result + 14) = a3;
  }

  return result;
}

+ (GKGoal)goalToInterceptAgent:(GKAgent *)target maxPredictionTime:(NSTimeInterval)maxPredictionTime
{
  v5 = target;
  v6 = [[GKGoal alloc] initToInterceptAgent:v5 maxPredictionTime:maxPredictionTime];

  return v6;
}

- (id)initToInterceptAgent:(id)a3 maxPredictionTime:(double)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = GKGoal;
  v7 = [(GKGoal *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = 10;
    v14[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    agents = v8->_agents;
    v8->_agents = v9;

    v8->_time = a4;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)initToFollowPath:(id)a3 maxPredictionTime:(double)a4 forward:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = GKGoal;
  v10 = [(GKGoal *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 11;
    objc_storeStrong(&v10->_path, a3);
    v11->_time = a4;
    v11->_forward = a5;
  }

  return v11;
}

+ (GKGoal)goalToStayOnPath:(GKPath *)path maxPredictionTime:(NSTimeInterval)maxPredictionTime
{
  v5 = path;
  v6 = [[GKGoal alloc] initToStayOnPath:v5 maxPredictionTime:maxPredictionTime];

  return v6;
}

- (id)initToStayOnPath:(id)a3 maxPredictionTime:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = GKGoal;
  v8 = [(GKGoal *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 12;
    objc_storeStrong(&v8->_path, a3);
    v9[5] = a4;
  }

  return v9;
}

- (__n128)getForce:(uint64_t)a3 agent:(void *)a4
{
  v6 = a4;
  v9 = v6;
  v10 = *(a1 + 8);
  if (v10 <= 6)
  {
    if (v10 > 3)
    {
      if (v10 == 4)
      {
        [v6 steerToAvoidAgents:*(a1 + 32) timeBeforeCollisionToAvoid:*(a1 + 40)];
      }

      else
      {
        LODWORD(v8) = *(a1 + 48);
        if (v10 == 5)
        {
          LODWORD(v7) = *(a1 + 52);
          [v6 steerForSeparation:*(a1 + 32) maxDistance:v7 maxAngle:v8];
        }

        else
        {
          [v6 steerForAlignment:*(a1 + 32) maxDistance:COERCE_DOUBLE(*(a1 + 52)) maxAngle:v8];
        }
      }

      goto LABEL_28;
    }

    if (v10 == 1)
    {
      v12 = [*(a1 + 32) firstObject];
      [v12 position3];
      [v9 steerForSeek:?];
    }

    else
    {
      if (v10 != 2)
      {
        v17 = 0u;
        if (v10 == 3)
        {
          [v6 steerToAvoidObstacles:*(a1 + 24) timeBeforeCollisionToAvoid:*(a1 + 40)];
LABEL_28:
          v17 = v11;
          goto LABEL_29;
        }

        goto LABEL_29;
      }

      v12 = [*(a1 + 32) firstObject];
      [v12 position3];
      [v9 steerForFlee:?];
    }

    v17 = v13;

    goto LABEL_29;
  }

  if (v10 > 9)
  {
    if (v10 == 10)
    {
      v14 = [*(a1 + 32) firstObject];
      [v9 steerForIntercept:v14 maxPredictionTime:*(a1 + 40)];
      v17 = v15;
    }

    else
    {
      if (v10 == 11)
      {
        [v6 steerToFollowPath:*(a1 + 16) maxPredictionTime:*(a1 + 60) forward:*(a1 + 40)];
        goto LABEL_28;
      }

      v17 = 0u;
      if (v10 == 12)
      {
        [v6 steerToStayOnPath:*(a1 + 16) maxPredictionTime:*(a1 + 40)];
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (v10 == 7)
    {
      LODWORD(v8) = *(a1 + 48);
      LODWORD(v7) = *(a1 + 52);
      [v6 steerForCohesion:*(a1 + 32) maxDistance:v7 maxAngle:v8];
      goto LABEL_28;
    }

    if (v10 != 8)
    {
      LODWORD(v8) = *(a1 + 56);
      [v6 steerForWander:a2 speed:v8];
      goto LABEL_28;
    }

    v17 = 0u;
    if (*(a1 + 56) > 1.0)
    {
      [v6 steerForTargetSpeed:?];
      goto LABEL_28;
    }
  }

LABEL_29:

  return v17;
}

- (id)copy
{
  v3 = MEMORY[0x23EE6C350](self, a2);

  return [(GKGoal *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(GKGoal);
  v4->_type = self->_type;
  objc_storeStrong(&v4->_path, self->_path);
  objc_storeStrong(&v4->_obstacles, self->_obstacles);
  objc_storeStrong(&v4->_agents, self->_agents);
  v4->_time = self->_time;
  v4->_angle = self->_angle;
  v4->_distance = self->_distance;
  v4->_speed = self->_speed;
  v4->_forward = self->_forward;
  return v4;
}

@end