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
- (__n128)getForce:(uint64_t)force agent:(void *)agent;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initToAlignWithAgents:(id)agents maxDistance:(float)distance maxAngle:(float)angle;
- (id)initToAvoidAgents:(id)agents maxPredictionTime:(double)time;
- (id)initToAvoidObstacles:(id)obstacles maxPredictionTime:(double)time;
- (id)initToCohereWithAgents:(id)agents maxDistance:(float)distance maxAngle:(float)angle;
- (id)initToFleeAgent:(id)agent;
- (id)initToFollowPath:(id)path maxPredictionTime:(double)time forward:(BOOL)forward;
- (id)initToInterceptAgent:(id)agent maxPredictionTime:(double)time;
- (id)initToReachTargetSpeed:(float)speed;
- (id)initToSeekAgent:(id)agent;
- (id)initToSeparateFromAgents:(id)agents maxDistance:(float)distance maxAngle:(float)angle;
- (id)initToStayOnPath:(id)path maxPredictionTime:(double)time;
- (id)initToWander:(float)wander;
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

- (id)initToSeekAgent:(id)agent
{
  v12[1] = *MEMORY[0x277D85DE8];
  agentCopy = agent;
  v11.receiver = self;
  v11.super_class = GKGoal;
  v5 = [(GKGoal *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 1;
    v12[0] = agentCopy;
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

- (id)initToFleeAgent:(id)agent
{
  v12[1] = *MEMORY[0x277D85DE8];
  agentCopy = agent;
  v11.receiver = self;
  v11.super_class = GKGoal;
  v5 = [(GKGoal *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 2;
    v12[0] = agentCopy;
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

- (id)initToAvoidObstacles:(id)obstacles maxPredictionTime:(double)time
{
  obstaclesCopy = obstacles;
  v11.receiver = self;
  v11.super_class = GKGoal;
  v8 = [(GKGoal *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 3;
    objc_storeStrong(&v8->_obstacles, obstacles);
    v9[5] = time;
  }

  return v9;
}

+ (GKGoal)goalToAvoidAgents:(NSArray *)agents maxPredictionTime:(NSTimeInterval)maxPredictionTime
{
  v5 = agents;
  v6 = [[GKGoal alloc] initToAvoidAgents:v5 maxPredictionTime:maxPredictionTime];

  return v6;
}

- (id)initToAvoidAgents:(id)agents maxPredictionTime:(double)time
{
  agentsCopy = agents;
  v11.receiver = self;
  v11.super_class = GKGoal;
  v8 = [(GKGoal *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 4;
    objc_storeStrong(&v8->_agents, agents);
    v9[5] = time;
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

- (id)initToSeparateFromAgents:(id)agents maxDistance:(float)distance maxAngle:(float)angle
{
  agentsCopy = agents;
  v13.receiver = self;
  v13.super_class = GKGoal;
  v10 = [(GKGoal *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 5;
    objc_storeStrong(&v10->_agents, agents);
    v11[12] = angle;
    v11[13] = distance;
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

- (id)initToAlignWithAgents:(id)agents maxDistance:(float)distance maxAngle:(float)angle
{
  agentsCopy = agents;
  v14.receiver = self;
  v14.super_class = GKGoal;
  v10 = [(GKGoal *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 6;
    objc_storeStrong(&v10->_agents, agents);
    v12 = fabsf(angle);
    if (v12 > 3.14159265)
    {
      v12 = 3.1416;
    }

    v11[12] = v12;
    v11[13] = distance;
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

- (id)initToCohereWithAgents:(id)agents maxDistance:(float)distance maxAngle:(float)angle
{
  agentsCopy = agents;
  v13.receiver = self;
  v13.super_class = GKGoal;
  v10 = [(GKGoal *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 7;
    objc_storeStrong(&v10->_agents, agents);
    v11[12] = angle;
    v11[13] = distance;
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

- (id)initToReachTargetSpeed:(float)speed
{
  v5.receiver = self;
  v5.super_class = GKGoal;
  result = [(GKGoal *)&v5 init];
  if (result)
  {
    *(result + 2) = 8;
    *(result + 14) = speed;
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

- (id)initToWander:(float)wander
{
  v5.receiver = self;
  v5.super_class = GKGoal;
  result = [(GKGoal *)&v5 init];
  if (result)
  {
    *(result + 2) = 9;
    *(result + 14) = wander;
  }

  return result;
}

+ (GKGoal)goalToInterceptAgent:(GKAgent *)target maxPredictionTime:(NSTimeInterval)maxPredictionTime
{
  v5 = target;
  v6 = [[GKGoal alloc] initToInterceptAgent:v5 maxPredictionTime:maxPredictionTime];

  return v6;
}

- (id)initToInterceptAgent:(id)agent maxPredictionTime:(double)time
{
  v14[1] = *MEMORY[0x277D85DE8];
  agentCopy = agent;
  v13.receiver = self;
  v13.super_class = GKGoal;
  v7 = [(GKGoal *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = 10;
    v14[0] = agentCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    agents = v8->_agents;
    v8->_agents = v9;

    v8->_time = time;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)initToFollowPath:(id)path maxPredictionTime:(double)time forward:(BOOL)forward
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = GKGoal;
  v10 = [(GKGoal *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 11;
    objc_storeStrong(&v10->_path, path);
    v11->_time = time;
    v11->_forward = forward;
  }

  return v11;
}

+ (GKGoal)goalToStayOnPath:(GKPath *)path maxPredictionTime:(NSTimeInterval)maxPredictionTime
{
  v5 = path;
  v6 = [[GKGoal alloc] initToStayOnPath:v5 maxPredictionTime:maxPredictionTime];

  return v6;
}

- (id)initToStayOnPath:(id)path maxPredictionTime:(double)time
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = GKGoal;
  v8 = [(GKGoal *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 12;
    objc_storeStrong(&v8->_path, path);
    v9[5] = time;
  }

  return v9;
}

- (__n128)getForce:(uint64_t)force agent:(void *)agent
{
  agentCopy = agent;
  v9 = agentCopy;
  v10 = *(self + 8);
  if (v10 <= 6)
  {
    if (v10 > 3)
    {
      if (v10 == 4)
      {
        [agentCopy steerToAvoidAgents:*(self + 32) timeBeforeCollisionToAvoid:*(self + 40)];
      }

      else
      {
        LODWORD(v8) = *(self + 48);
        if (v10 == 5)
        {
          LODWORD(v7) = *(self + 52);
          [agentCopy steerForSeparation:*(self + 32) maxDistance:v7 maxAngle:v8];
        }

        else
        {
          [agentCopy steerForAlignment:*(self + 32) maxDistance:COERCE_DOUBLE(*(self + 52)) maxAngle:v8];
        }
      }

      goto LABEL_28;
    }

    if (v10 == 1)
    {
      firstObject = [*(self + 32) firstObject];
      [firstObject position3];
      [v9 steerForSeek:?];
    }

    else
    {
      if (v10 != 2)
      {
        v17 = 0u;
        if (v10 == 3)
        {
          [agentCopy steerToAvoidObstacles:*(self + 24) timeBeforeCollisionToAvoid:*(self + 40)];
LABEL_28:
          v17 = v11;
          goto LABEL_29;
        }

        goto LABEL_29;
      }

      firstObject = [*(self + 32) firstObject];
      [firstObject position3];
      [v9 steerForFlee:?];
    }

    v17 = v13;

    goto LABEL_29;
  }

  if (v10 > 9)
  {
    if (v10 == 10)
    {
      firstObject2 = [*(self + 32) firstObject];
      [v9 steerForIntercept:firstObject2 maxPredictionTime:*(self + 40)];
      v17 = v15;
    }

    else
    {
      if (v10 == 11)
      {
        [agentCopy steerToFollowPath:*(self + 16) maxPredictionTime:*(self + 60) forward:*(self + 40)];
        goto LABEL_28;
      }

      v17 = 0u;
      if (v10 == 12)
      {
        [agentCopy steerToStayOnPath:*(self + 16) maxPredictionTime:*(self + 40)];
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (v10 == 7)
    {
      LODWORD(v8) = *(self + 48);
      LODWORD(v7) = *(self + 52);
      [agentCopy steerForCohesion:*(self + 32) maxDistance:v7 maxAngle:v8];
      goto LABEL_28;
    }

    if (v10 != 8)
    {
      LODWORD(v8) = *(self + 56);
      [agentCopy steerForWander:a2 speed:v8];
      goto LABEL_28;
    }

    v17 = 0u;
    if (*(self + 56) > 1.0)
    {
      [agentCopy steerForTargetSpeed:?];
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

- (id)copyWithZone:(_NSZone *)zone
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